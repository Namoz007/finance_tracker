import 'package:finance/src.dart';
import '../../../../src2.dart';

@lazySingleton
class RegisterUseCase extends BaseUseCase<void,RegisterRequestEntity>{
  final AuthenticationRepository _repository;

  RegisterUseCase({required AuthenticationRepository repo}) : _repository = repo;


  @override
  Future<Either<Failure, void>> call(RegisterRequestEntity params) async{
    return await _repository.register(request: params);
  }

}