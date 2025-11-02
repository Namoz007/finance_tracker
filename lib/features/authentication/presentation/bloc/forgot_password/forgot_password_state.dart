part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  factory ForgotPasswordState({
    @Default(RequestStatus.initial) RequestStatus status,
    @Default(UIResponseStatus.none) UIResponseStatus uiStatus,
    required TextEditingController emailController,
    @Default(false) bool userExists,
    Failure? error,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initialState() => ForgotPasswordState(emailController: TextEditingController());

  @override
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    return super.noSuchMethod(invocation);
  }
}
