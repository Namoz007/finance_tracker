part of 'user_management_bloc.dart';


@freezed
class UserManagementState with _$UserManagementState {
  const factory UserManagementState({
    @Default(RequestStatus.initial) RequestStatus status,
    @Default(UIResponseStatus.none) UIResponseStatus uiStatus,
    required UserEntity user,
    Failure? error,
  }) = _UserManagementState;
  
  factory UserManagementState.initialState() => UserManagementState(user: UserModel());
  
  @override
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    return super.noSuchMethod(invocation);
  }
  
  
}
