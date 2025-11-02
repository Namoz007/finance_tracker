import 'package:finance/features/authentication/domain/usecase/login_usecase.dart';

import '../../../../../src.dart';
part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;

  LoginBloc({required LoginUseCase loginUseCase})
    : _loginUseCase = loginUseCase,
      super(LoginState.initial()) {
    on<_Login>(_login);
    on<_CloseUIStatus>(_closeUIStatus);
  }

  void _closeUIStatus(LoginEvent event,emit) async{
    emit(state.copyWith(uiStatus: UIResponseStatus.none));
  }

  void _login(LoginEvent event, emit) async {
    emit(state.copyWith(status: RequestStatus.loading));
    await _loginUseCase
        .call(
          LoginRequestModel.fromUI(
            emailController: state.emailController,
            passwordController: state.passwordController,
          ),
        )
        .then(
          (value) => value.fold(
            (l) => emit(state.copyWith(status: RequestStatus.error, error: l,uiStatus: UIResponseStatus.toast)),
            (r) => emit(
              state.copyWith(
                status: RequestStatus.success,
                authenticated: true,
              ),
            ),
          ),
        );
    emit(state.copyWith(uiStatus: UIResponseStatus.none));
  }
}
