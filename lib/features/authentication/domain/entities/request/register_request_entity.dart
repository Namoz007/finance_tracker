abstract class RegisterRequestEntity {
  String fullName;
  String email;
  String password;

  RegisterRequestEntity({
    required this.fullName,
    required this.email,
    required this.password,
  });

  Map<String,dynamic> toJsonForCreateUser();

}
