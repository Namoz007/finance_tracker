part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(RequestStatus.initial) RequestStatus status,
    @Default(UIResponseStatus.none) UIResponseStatus uiStatus,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required bool obcureText,
    Failure? error,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
    formKey: GlobalKey<FormState>(),
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
    obcureText: false,
  );
}
