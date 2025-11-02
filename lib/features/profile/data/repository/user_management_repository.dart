import 'package:finance/src.dart';

import '../../../../src2.dart';

@LazySingleton(as: UserManagementRepository)
class UserManagementRepositoryImpl extends UserManagementRepository{
  final UserManagementDataSource _dataSource;

  UserManagementRepositoryImpl({required UserManagementDataSource dataSource}) : _dataSource = dataSource;

  @override
  Future<Either<Failure, UserEntity>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }


}