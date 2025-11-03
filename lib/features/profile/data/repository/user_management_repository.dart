import 'package:finance/src.dart';

import '../../../../src2.dart';

@LazySingleton(as: UserManagementRepository)
class UserManagementRepositoryImpl extends UserManagementRepository{
  final UserManagementDataSource _dataSource;

  UserManagementRepositoryImpl({required UserManagementDataSource dataSource}) : _dataSource = dataSource;

  @override
  Future<Either<Failure, UserEntity>> getUser() async{
    try{
      return Right(await _dataSource.getUser());
    }catch(e){
      return Left(Failure(type: ErrorType.data_credential,));
    }
  }


}