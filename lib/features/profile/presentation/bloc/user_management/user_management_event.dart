part of 'user_management_bloc.dart';

@freezed
class UserManagementEvent with _$UserManagementEvent {
  const factory UserManagementEvent.started() = _Started;
  const factory UserManagementEvent.getUsr() = _GetUser;
}
