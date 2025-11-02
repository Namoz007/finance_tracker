import 'package:finance/src.dart';
import 'package:finance/src2.dart';

abstract class UserManagementRepository{

  Future<Either<Failure,UserEntity>> getUser();

}