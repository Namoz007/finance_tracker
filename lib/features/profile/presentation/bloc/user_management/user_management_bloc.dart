import 'package:finance/src.dart';
part 'user_management_event.dart';
part 'user_management_state.dart';
part 'user_management_bloc.freezed.dart';

class UserManagementBloc
    extends Bloc<UserManagementEvent, UserManagementState> {
  GetUserUseCase _useCase;
  UserManagementBloc({required GetUserUseCase useCase})
    : _useCase = useCase,
      super(UserManagementState.initialState()) {
    on<_GetUser>(_getUser);
  }

  void _getUser(_GetUser event, emit) async {
    emit(state.copyWith(status: RequestStatus.loading));
    await _useCase
        .call(NoParams)
        .then(
          (value) => value.fold(
            (l) => emit(state.copyWith(error: l,status: RequestStatus.error,uiStatus: UIResponseStatus.dialog)),
            (r) => emit(state.copyWith(status: RequestStatus.loaded,user: r)),
          ),
        );
  }
}
