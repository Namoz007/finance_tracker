import 'package:finance/src.dart';
part 'login_request_model.freezed.dart';

@freezed
class LoginRequestModel extends LoginRequestEntity with _$LoginRequestModel {
  factory LoginRequestModel({
    required String email,
    required String password,
  }) = _LoginRequestModel;

  LoginRequestModel._() : super(email: '', password: '');

  factory LoginRequestModel.fromUI({
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) {
    return LoginRequestModel(
      email: emailController.text,
      password: passwordController.text,
    );
  }
}