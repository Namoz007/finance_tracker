part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.registration() = _Registration;
  const factory RegisterEvent.closeUIStatus() = _CloseUIStatus;
}
