import 'package:finance/src.dart';

abstract class AuthenticationDataSource{

  Future<LoginResponseEntity> login({required LoginRequestEntity request});

  Future<void> register({required RegisterRequestEntity request});

  Future<bool> forgotPassword({required String email});

}

@LazySingleton(as: AuthenticationDataSource)
class AuthenticationDataSourceImpl extends AuthenticationDataSource{

  final FirebaseAuth _auth;
  final Dio _dio;

  AuthenticationDataSourceImpl({required Dio dio}) : _dio = dio, _auth = FirebaseAuth.instance;

  @override
  Future<bool> forgotPassword({required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
    return true;
  }

  @override
  Future<void> register({required RegisterRequestEntity request}) async{
    await _auth.createUserWithEmailAndPassword(email: request.email, password: request.password,);
    sl<SharedPreferencesService>().setString(key: "email", value: request.email);
    final response = await _dio.post(ApiConst.createUser + ".json",data: request.toJsonForCreateUser());
    await _dio.patch(ApiConst.createUser + "/" + response.data['name'] + ".json",data: {"id":response.data['name']});
  }

  @override
  Future<LoginResponseEntity> login({required LoginRequestEntity request}) async{
    final response = await _auth.signInWithEmailAndPassword(email: request.email, password: request.password);

    if(response.user?.email == null){
      throw "User not found";
    }
    sl<SharedPreferencesService>().setString(key: "email", value: request.email);
    return LoginResponseModel.fromResponse(email: response.user!.email!);
  }

}