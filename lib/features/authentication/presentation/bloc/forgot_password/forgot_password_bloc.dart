import 'package:finance/src.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgotPasswordUseCase _useCase;
  ForgotPasswordBloc({required ForgotPasswordUseCase useCase})
    : _useCase = useCase,
      super(ForgotPasswordState.initialState()) {
    on<_CheckEmail>(_checkEmail);
    on<_CloseUIStatus>(_closeUIStatus);
  }


  void _closeUIStatus(_CloseUIStatus event,emit){
    emit(state.copyWith(uiStatus: UIResponseStatus.none));
  }

  void _checkEmail(_CheckEmail event, emit) async {
    emit(state.copyWith(status: RequestStatus.loading));
    await _useCase
        .call(state.emailController.text)
        .then(
          (value) => value.fold(
            (l) => emit(state.copyWith(status: RequestStatus.error,error: l,uiStatus: UIResponseStatus.dialog)),
            (r) => emit(state.copyWith(status: RequestStatus.success,userExists: r)),
          ),
        );
  }
}
