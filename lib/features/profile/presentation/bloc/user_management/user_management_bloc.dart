import 'package:finance/src.dart';
part 'user_management_event.dart';
part 'user_management_state.dart';
part 'user_management_bloc.freezed.dart';

@lazySingleton
class UserManagementBloc
    extends Bloc<UserManagementEvent, UserManagementState> {
  GetUserUseCase _useCase;
  UserManagementBloc({required GetUserUseCase useCase})
    : _useCase = useCase,
      super(UserManagementState.initialState()) {
    on<_GetUser>(_getUser);
    on<_Started>(_started);
    on<_UpdateAvatar>(_updateAvatar);
    on<_CloseUIStatus>(_closeUIStatus);
  }

  void _closeUIStatus(_CloseUIStatus event, emit) {
    emit(state.copyWith(uiStatus: UIResponseStatus.none));
  }

  void _updateAvatar(_UpdateAvatar event, emit) async {
    if (await sl<PermissionHandlerService>().checkPhotosPermission()) {
      final media = await sl<ImagePickerService>().pickImageFromGallery();
      if (media != null) {
        print("surat olindi");
      } else {
        emit(
          state.copyWith(
            uiStatus: UIResponseStatus.toast,
            error: Failure(
              type: ErrorType.data_credential,
              message: "Update avatar cancelled!",
            ),
          ),
        );
        emit(state.copyWith(uiStatus: UIResponseStatus.none));
      }
    } else {
      emit(
        state.copyWith(
          error: Failure(
            type: ErrorType.data_credential,
            message: "You not access for use photo",
          ),
          uiStatus: UIResponseStatus.dialog,
        ),
      );
    }
  }

  void _started(_Started event, emit) {
    emit(
      state.copyWith(
        haveAccount:
            sl<SharedPreferencesService>().getString(key: "email") != null,
      ),
    );

    if (sl<SharedPreferencesService>().getString(key: "email") != null) {
      add(_GetUser());
    }
  }

  void _getUser(_GetUser event, emit) async {
    if (state.status != RequestStatus.loading) {
      emit(state.copyWith(status: RequestStatus.loading));
      await _useCase
          .call(NoParams)
          .then(
            (value) => value.fold(
              (l) {
                sl<SharedPreferencesService>().remove(key: "email");
                emit(
                  state.copyWith(
                    error: l,
                    status: RequestStatus.error,
                    uiStatus: UIResponseStatus.dialog,
                    haveAccount: false,
                  ),
                );
              },
              (r) => emit(
                state.copyWith(
                  status: RequestStatus.loaded,
                  user: r,
                  haveAccount: true,
                ),
              ),
            ),
          );
    }
  }
}
