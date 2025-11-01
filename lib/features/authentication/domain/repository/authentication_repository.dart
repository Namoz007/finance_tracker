import 'package:finance/src2.dart';
import "package:finance/src.dart";

abstract class AuthenticationRepository{

  Future<Either<Failure,void>> login({required LoginRequestEntity request});

}