import 'package:finance/src.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel extends UserEntity with _$UserModel {
  factory UserModel({
    @Default('') String id,
    @Default('') String fullName,
    @Default('') String email,
    @Default(null) String? avatar,
    @Default(null) String? bio,
    @Default(true) bool empty,
  }) = _UserModel;

  UserModel._() : super(email: '', id: '', fullName: '', empty: true);

  @override
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromJsonForUser({required Map<String, dynamic> json}) =>
      UserModel(
        id: json['id'],
        email: json['email'],
        fullName: json['fullName'],
        empty: false,
        avatar: json['avatar'],
        bio: json['bio']
      );

  @override
  Map<String, dynamic> toJson() => {};
}
