import 'package:finance/src.dart';
part 'login_response_model.freezed.dart';


@freezed
class LoginResponseModel extends LoginResponseEntity with _$LoginResponseModel{
  factory LoginResponseModel({
    required String email
}) = _LoginResponseModel;

  LoginResponseModel._() : super(email: '');

  factory LoginResponseModel.fromResponse({required String email}) => LoginResponseModel(email: email);


}