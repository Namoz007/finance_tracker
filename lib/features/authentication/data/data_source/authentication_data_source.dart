import 'package:finance/src.dart';
import 'package:finance/src2.dart';

abstract class AuthenticationDataSource{

  Future<void> login({required LoginRequestEntity request});

}

@LazySingleton(as: AuthenticationDataSource)
class AuthenticationDataSourceImpl extends AuthenticationDataSource{

  final FirebaseAuth _auth;

  AuthenticationDataSourceImpl() : _auth = FirebaseAuth.instance;


  @override
  Future<void> login({required LoginRequestEntity request}) async{
    print("login email ${request.email} ${request.password}");
    final response = await _auth.signInWithEmailAndPassword(email: request.email, password: request.password);
    print("bu responsecha login ${response}");
  }

}