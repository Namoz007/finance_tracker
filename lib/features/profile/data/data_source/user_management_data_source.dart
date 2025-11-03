import 'package:finance/src.dart';

abstract class UserManagementDataSource{


  Future<UserEntity> getUser();

}

@LazySingleton(as: UserManagementDataSource)
class UserManagementDataSourceImpl extends UserManagementDataSource{
  final Dio _dio;

  UserManagementDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<UserEntity> getUser() async{
    final response = await _dio.get(ApiConst.getUsers + ".json");
    return UserModel.fromJsonForUser(json: response.data[(response.data as Map<String,dynamic>).keys.toList().where((value) => response.data[value]['email'] == sl<SharedPreferencesService>().getString(key: "email")).toList()[0]]);
  }


}