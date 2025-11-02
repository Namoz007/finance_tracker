import 'package:finance/src.dart';

import '../../../../src2.dart';

@lazySingleton
class LoginUseCase implements BaseUseCase<LoginResponseEntity,LoginRequestEntity>{

  final AuthenticationRepository _repository;

  LoginUseCase({required AuthenticationRepository repository}) : _repository = repository;

  @override
  Future<Either<Failure, LoginResponseEntity>> call(params) {
    return _repository.login(request: params);
  }
}