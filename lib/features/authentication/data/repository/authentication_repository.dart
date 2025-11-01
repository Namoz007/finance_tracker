import 'package:finance/src.dart';
import '../../../../src2.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends AuthenticationRepository{
  
  AuthenticationDataSource _dataSource;
  
  AuthenticationRepositoryImpl({required AuthenticationDataSource dataSource}) : _dataSource = dataSource;
  
  @override
  Future<Either<Failure, void>> login({required LoginRequestEntity request}) async{
    await _dataSource.login(request: request);
    return Right(());
  }
  
  
  
}