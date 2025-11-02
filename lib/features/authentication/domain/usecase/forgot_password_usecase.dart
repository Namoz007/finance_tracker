import '../../../../src2.dart';
import 'package:finance/src.dart';

@lazySingleton
class ForgotPasswordUseCase extends BaseUseCase<bool,String>{

  final AuthenticationRepository _repository;

  ForgotPasswordUseCase({required AuthenticationRepository repo}) : _repository = repo;

  @override
  Future<Either<Failure, bool>> call(String params) async{
    return await _repository.forgotPassword(email: params);
  }

}