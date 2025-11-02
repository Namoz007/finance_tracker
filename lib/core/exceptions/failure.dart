
import 'package:finance/src.dart';

class Failure{
  ErrorType type;
  String? message;

  Failure({required this.type,this.message});

  factory Failure.fromError({String? error}) => Failure(type: ErrorType.data_credential,message: error);

}