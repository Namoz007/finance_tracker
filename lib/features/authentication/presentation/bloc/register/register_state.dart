part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(RequestStatus.initial) RequestStatus status,
    @Default(UIResponseStatus.none) UIResponseStatus uiStatus,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    @Default(false) bool authenticated,
    @Default(false) bool obcureText,
    Failure? error,
  }) = _RegisterState;

  factory RegisterState.initialState() => RegisterState(
    nameController: TextEditingController(),
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
  );

  @override
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    return super.noSuchMethod(invocation);
  }
}
