import 'package:finance/src.dart';
part 'register_request_model.freezed.dart';

@freezed
class RegisterRequestModel extends RegisterRequestEntity
    with _$RegisterRequestModel {
  factory RegisterRequestModel({
    required String fullName,
    required String email,
    required String password,
  }) = _RegisterRequestModel;

  RegisterRequestModel._() : super(fullName: '', email: '', password: '');

  factory RegisterRequestModel.fromUI({
    required TextEditingController name,
    required TextEditingController email,
    required TextEditingController password,
  }) => RegisterRequestModel(
    fullName: name.text,
    email: email.text,
    password: password.text,
  );

  @override
  Map<String, dynamic> toJsonForCreateUser() => {"fullName": fullName,"email":email,};
}
