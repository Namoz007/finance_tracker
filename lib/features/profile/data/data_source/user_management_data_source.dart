import 'package:finance/src.dart';

abstract class UserManagementDataSource{


  Future<UserEntity> getUser();

}

@LazySingleton(as: UserManagementDataSource)
class UserManagementDataSourceImpl extends UserManagementDataSource{
  final Dio _dio;

  UserManagementDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<UserEntity> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }


}