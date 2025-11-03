abstract class UserEntity {
  String id;
  String fullName;
  String email;
  String? avatar;
  String? bio;
  bool empty;

  UserEntity({
    required this.id,
    required this.fullName,
    required this.email,
    this.avatar,
    this.bio,
    required this.empty,
  });
}
