// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserManagementEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserManagementEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserManagementEvent()';
}


}

/// @nodoc
class $UserManagementEventCopyWith<$Res>  {
$UserManagementEventCopyWith(UserManagementEvent _, $Res Function(UserManagementEvent) __);
}


/// Adds pattern-matching-related methods to [UserManagementEvent].
extension UserManagementEventPatterns on UserManagementEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetUser value)?  getUsr,TResult Function( _UpdateAvatar value)?  updateAvatar,TResult Function( _CloseUIStatus value)?  closeUIStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetUser() when getUsr != null:
return getUsr(_that);case _UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that);case _CloseUIStatus() when closeUIStatus != null:
return closeUIStatus(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetUser value)  getUsr,required TResult Function( _UpdateAvatar value)  updateAvatar,required TResult Function( _CloseUIStatus value)  closeUIStatus,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetUser():
return getUsr(_that);case _UpdateAvatar():
return updateAvatar(_that);case _CloseUIStatus():
return closeUIStatus(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetUser value)?  getUsr,TResult? Function( _UpdateAvatar value)?  updateAvatar,TResult? Function( _CloseUIStatus value)?  closeUIStatus,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetUser() when getUsr != null:
return getUsr(_that);case _UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that);case _CloseUIStatus() when closeUIStatus != null:
return closeUIStatus(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getUsr,TResult Function()?  updateAvatar,TResult Function()?  closeUIStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetUser() when getUsr != null:
return getUsr();case _UpdateAvatar() when updateAvatar != null:
return updateAvatar();case _CloseUIStatus() when closeUIStatus != null:
return closeUIStatus();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getUsr,required TResult Function()  updateAvatar,required TResult Function()  closeUIStatus,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetUser():
return getUsr();case _UpdateAvatar():
return updateAvatar();case _CloseUIStatus():
return closeUIStatus();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getUsr,TResult? Function()?  updateAvatar,TResult? Function()?  closeUIStatus,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetUser() when getUsr != null:
return getUsr();case _UpdateAvatar() when updateAvatar != null:
return updateAvatar();case _CloseUIStatus() when closeUIStatus != null:
return closeUIStatus();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UserManagementEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserManagementEvent.started()';
}


}




/// @nodoc


class _GetUser implements UserManagementEvent {
  const _GetUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserManagementEvent.getUsr()';
}


}




/// @nodoc


class _UpdateAvatar implements UserManagementEvent {
  const _UpdateAvatar();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAvatar);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserManagementEvent.updateAvatar()';
}


}




/// @nodoc


class _CloseUIStatus implements UserManagementEvent {
  const _CloseUIStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloseUIStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserManagementEvent.closeUIStatus()';
}


}




/// @nodoc
mixin _$UserManagementState {

 RequestStatus get status; UIResponseStatus get uiStatus; UserEntity get user; bool get haveAccount; Failure? get error; String? get successMessage;
/// Create a copy of UserManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserManagementStateCopyWith<UserManagementState> get copyWith => _$UserManagementStateCopyWithImpl<UserManagementState>(this as UserManagementState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserManagementState&&(identical(other.status, status) || other.status == status)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.user, user) || other.user == user)&&(identical(other.haveAccount, haveAccount) || other.haveAccount == haveAccount)&&(identical(other.error, error) || other.error == error)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,uiStatus,user,haveAccount,error,successMessage);

@override
String toString() {
  return 'UserManagementState(status: $status, uiStatus: $uiStatus, user: $user, haveAccount: $haveAccount, error: $error, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class $UserManagementStateCopyWith<$Res>  {
  factory $UserManagementStateCopyWith(UserManagementState value, $Res Function(UserManagementState) _then) = _$UserManagementStateCopyWithImpl;
@useResult
$Res call({
 RequestStatus status, UIResponseStatus uiStatus, UserEntity user, bool haveAccount, Failure? error, String? successMessage
});




}
/// @nodoc
class _$UserManagementStateCopyWithImpl<$Res>
    implements $UserManagementStateCopyWith<$Res> {
  _$UserManagementStateCopyWithImpl(this._self, this._then);

  final UserManagementState _self;
  final $Res Function(UserManagementState) _then;

/// Create a copy of UserManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? uiStatus = null,Object? user = null,Object? haveAccount = null,Object? error = freezed,Object? successMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as UIResponseStatus,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,haveAccount: null == haveAccount ? _self.haveAccount : haveAccount // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserManagementState].
extension UserManagementStatePatterns on UserManagementState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserManagementState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserManagementState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserManagementState value)  $default,){
final _that = this;
switch (_that) {
case _UserManagementState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserManagementState value)?  $default,){
final _that = this;
switch (_that) {
case _UserManagementState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestStatus status,  UIResponseStatus uiStatus,  UserEntity user,  bool haveAccount,  Failure? error,  String? successMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserManagementState() when $default != null:
return $default(_that.status,_that.uiStatus,_that.user,_that.haveAccount,_that.error,_that.successMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestStatus status,  UIResponseStatus uiStatus,  UserEntity user,  bool haveAccount,  Failure? error,  String? successMessage)  $default,) {final _that = this;
switch (_that) {
case _UserManagementState():
return $default(_that.status,_that.uiStatus,_that.user,_that.haveAccount,_that.error,_that.successMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestStatus status,  UIResponseStatus uiStatus,  UserEntity user,  bool haveAccount,  Failure? error,  String? successMessage)?  $default,) {final _that = this;
switch (_that) {
case _UserManagementState() when $default != null:
return $default(_that.status,_that.uiStatus,_that.user,_that.haveAccount,_that.error,_that.successMessage);case _:
  return null;

}
}

}

/// @nodoc


class _UserManagementState implements UserManagementState {
  const _UserManagementState({this.status = RequestStatus.initial, this.uiStatus = UIResponseStatus.none, required this.user, required this.haveAccount, this.error = null, this.successMessage = null});
  

@override@JsonKey() final  RequestStatus status;
@override@JsonKey() final  UIResponseStatus uiStatus;
@override final  UserEntity user;
@override final  bool haveAccount;
@override@JsonKey() final  Failure? error;
@override@JsonKey() final  String? successMessage;

/// Create a copy of UserManagementState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserManagementStateCopyWith<_UserManagementState> get copyWith => __$UserManagementStateCopyWithImpl<_UserManagementState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserManagementState&&(identical(other.status, status) || other.status == status)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.user, user) || other.user == user)&&(identical(other.haveAccount, haveAccount) || other.haveAccount == haveAccount)&&(identical(other.error, error) || other.error == error)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,uiStatus,user,haveAccount,error,successMessage);

@override
String toString() {
  return 'UserManagementState(status: $status, uiStatus: $uiStatus, user: $user, haveAccount: $haveAccount, error: $error, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class _$UserManagementStateCopyWith<$Res> implements $UserManagementStateCopyWith<$Res> {
  factory _$UserManagementStateCopyWith(_UserManagementState value, $Res Function(_UserManagementState) _then) = __$UserManagementStateCopyWithImpl;
@override @useResult
$Res call({
 RequestStatus status, UIResponseStatus uiStatus, UserEntity user, bool haveAccount, Failure? error, String? successMessage
});




}
/// @nodoc
class __$UserManagementStateCopyWithImpl<$Res>
    implements _$UserManagementStateCopyWith<$Res> {
  __$UserManagementStateCopyWithImpl(this._self, this._then);

  final _UserManagementState _self;
  final $Res Function(_UserManagementState) _then;

/// Create a copy of UserManagementState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? uiStatus = null,Object? user = null,Object? haveAccount = null,Object? error = freezed,Object? successMessage = freezed,}) {
  return _then(_UserManagementState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as UIResponseStatus,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,haveAccount: null == haveAccount ? _self.haveAccount : haveAccount // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
