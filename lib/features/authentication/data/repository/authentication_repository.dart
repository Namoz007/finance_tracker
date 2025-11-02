import 'package:finance/src.dart';
import '../../../../src2.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends AuthenticationRepository{
  
  AuthenticationDataSource _dataSource;
  
  AuthenticationRepositoryImpl({required AuthenticationDataSource dataSource}) : _dataSource = dataSource;

  @override
  Future<Either<Failure,bool>> forgotPassword({required String email}) async{
    try{
      return Right(await _dataSource.forgotPassword(email: email));
    }catch(e){
      return Left(Failure.fromError(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> register({required RegisterRequestEntity request}) async{
    try{
      final response = await _dataSource.register(request: request);
      return Right(response);
    }catch(e){
      return Left(Failure.fromError(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, LoginResponseEntity>> login({required LoginRequestEntity request}) async{
    try{
      final response = await _dataSource.login(request: request);
      return Right(response);
    }catch(e){
      return Left(Failure.fromError(error: e.toString()));
    }
    
  }
  
  
  
}