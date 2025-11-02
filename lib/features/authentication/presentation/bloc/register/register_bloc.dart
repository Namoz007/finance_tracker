import 'package:finance/features/authentication/data/models/request/register_request_model.dart';
import 'package:finance/features/authentication/domain/usecase/register_usecase.dart';
import 'package:finance/src.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase _registerUseCase;
  RegisterBloc({required RegisterUseCase useCase})
    : _registerUseCase = useCase,
      super(RegisterState.initialState()) {
    on<_Registration>(_registration);
    on<_CloseUIStatus>(_closeUIStatus);
  }

  void _closeUIStatus(RegisterEvent event,emit) {
    emit(state.copyWith(uiStatus: UIResponseStatus.none));
  }

  void _registration(RegisterEvent event, emit) async {
    emit(state.copyWith(status: RequestStatus.loading));
    await _registerUseCase
        .call(
          RegisterRequestModel.fromUI(
            name: state.nameController,
            email: state.emailController,
            password: state.passwordController,
          ),
        )
        .then(
          (value) => value.fold(
            (l) => emit(state.copyWith(status: RequestStatus.error,error: l,uiStatus: UIResponseStatus.dialog)),
            (r) => emit(state.copyWith(status: RequestStatus.success,authenticated: true)),
          ),
        );
  }
}
