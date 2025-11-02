import 'package:finance/src2.dart';
import "package:finance/src.dart";

abstract class AuthenticationRepository{

  Future<Either<Failure,LoginResponseEntity>> login({required LoginRequestEntity request});

  Future<Either<Failure,void>> register({required RegisterRequestEntity request});

  Future<Either<Failure,bool>> forgotPassword({required String email});

}