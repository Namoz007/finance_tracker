import 'package:finance/src.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';
@freezed
class UserModel extends UserEntity with _$UserModel {
  factory UserModel({
    @Default('') String id,
    @Default('') String fullName,
    @Default('') String email,
    @Default(true) bool empty
  }) = _UserModel;

  UserModel._() : super(email: '',id: '',fullName: '',empty: true);

  @override
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => {};

}
