import 'package:finance/src.dart';

import '../../../../src2.dart';

class GetUserUseCase extends BaseUseCase<UserEntity,NoParams>{
  final UserManagementRepository _repository;

  GetUserUseCase({required UserManagementRepository repository}) : _repository = repository;

  @override
  Future<Either<Failure, UserEntity>> call(void params)async{
    return await _repository.getUser();
  }

}