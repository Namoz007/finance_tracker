// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent()';
}


}

/// @nodoc
class $RegisterEventCopyWith<$Res>  {
$RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}


/// Adds pattern-matching-related methods to [RegisterEvent].
extension RegisterEventPatterns on RegisterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Registration value)?  registration,TResult Function( _CloseUIStatus value)?  closeUIStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Registration() when registration != null:
return registration(_that);case _CloseUIStatus() when closeUIStatus != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Registration value)  registration,required TResult Function( _CloseUIStatus value)  closeUIStatus,}){
final _that = this;
switch (_that) {
case _Registration():
return registration(_that);case _CloseUIStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Registration value)?  registration,TResult? Function( _CloseUIStatus value)?  closeUIStatus,}){
final _that = this;
switch (_that) {
case _Registration() when registration != null:
return registration(_that);case _CloseUIStatus() when closeUIStatus != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  registration,TResult Function()?  closeUIStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Registration() when registration != null:
return registration();case _CloseUIStatus() when closeUIStatus != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  registration,required TResult Function()  closeUIStatus,}) {final _that = this;
switch (_that) {
case _Registration():
return registration();case _CloseUIStatus():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  registration,TResult? Function()?  closeUIStatus,}) {final _that = this;
switch (_that) {
case _Registration() when registration != null:
return registration();case _CloseUIStatus() when closeUIStatus != null:
return closeUIStatus();case _:
  return null;

}
}

}

/// @nodoc


class _Registration implements RegisterEvent {
  const _Registration();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Registration);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.registration()';
}


}




/// @nodoc


class _CloseUIStatus implements RegisterEvent {
  const _CloseUIStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloseUIStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.closeUIStatus()';
}


}




/// @nodoc
mixin _$RegisterState {

 RequestStatus get status; UIResponseStatus get uiStatus; TextEditingController get nameController; TextEditingController get emailController; TextEditingController get passwordController; bool get authenticated; bool get obcureText; Failure? get error;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.status, status) || other.status == status)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.nameController, nameController) || other.nameController == nameController)&&(identical(other.emailController, emailController) || other.emailController == emailController)&&(identical(other.passwordController, passwordController) || other.passwordController == passwordController)&&(identical(other.authenticated, authenticated) || other.authenticated == authenticated)&&(identical(other.obcureText, obcureText) || other.obcureText == obcureText)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,uiStatus,nameController,emailController,passwordController,authenticated,obcureText,error);

@override
String toString() {
  return 'RegisterState(status: $status, uiStatus: $uiStatus, nameController: $nameController, emailController: $emailController, passwordController: $passwordController, authenticated: $authenticated, obcureText: $obcureText, error: $error)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 RequestStatus status, UIResponseStatus uiStatus, TextEditingController nameController, TextEditingController emailController, TextEditingController passwordController, bool authenticated, bool obcureText, Failure? error
});




}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? uiStatus = null,Object? nameController = null,Object? emailController = null,Object? passwordController = null,Object? authenticated = null,Object? obcureText = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as UIResponseStatus,nameController: null == nameController ? _self.nameController : nameController // ignore: cast_nullable_to_non_nullable
as TextEditingController,emailController: null == emailController ? _self.emailController : emailController // ignore: cast_nullable_to_non_nullable
as TextEditingController,passwordController: null == passwordController ? _self.passwordController : passwordController // ignore: cast_nullable_to_non_nullable
as TextEditingController,authenticated: null == authenticated ? _self.authenticated : authenticated // ignore: cast_nullable_to_non_nullable
as bool,obcureText: null == obcureText ? _self.obcureText : obcureText // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestStatus status,  UIResponseStatus uiStatus,  TextEditingController nameController,  TextEditingController emailController,  TextEditingController passwordController,  bool authenticated,  bool obcureText,  Failure? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.status,_that.uiStatus,_that.nameController,_that.emailController,_that.passwordController,_that.authenticated,_that.obcureText,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestStatus status,  UIResponseStatus uiStatus,  TextEditingController nameController,  TextEditingController emailController,  TextEditingController passwordController,  bool authenticated,  bool obcureText,  Failure? error)  $default,) {final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that.status,_that.uiStatus,_that.nameController,_that.emailController,_that.passwordController,_that.authenticated,_that.obcureText,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestStatus status,  UIResponseStatus uiStatus,  TextEditingController nameController,  TextEditingController emailController,  TextEditingController passwordController,  bool authenticated,  bool obcureText,  Failure? error)?  $default,) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.status,_that.uiStatus,_that.nameController,_that.emailController,_that.passwordController,_that.authenticated,_that.obcureText,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterState implements RegisterState {
  const _RegisterState({this.status = RequestStatus.initial, this.uiStatus = UIResponseStatus.none, required this.nameController, required this.emailController, required this.passwordController, this.authenticated = false, this.obcureText = false, this.error});
  

@override@JsonKey() final  RequestStatus status;
@override@JsonKey() final  UIResponseStatus uiStatus;
@override final  TextEditingController nameController;
@override final  TextEditingController emailController;
@override final  TextEditingController passwordController;
@override@JsonKey() final  bool authenticated;
@override@JsonKey() final  bool obcureText;
@override final  Failure? error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.status, status) || other.status == status)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.nameController, nameController) || other.nameController == nameController)&&(identical(other.emailController, emailController) || other.emailController == emailController)&&(identical(other.passwordController, passwordController) || other.passwordController == passwordController)&&(identical(other.authenticated, authenticated) || other.authenticated == authenticated)&&(identical(other.obcureText, obcureText) || other.obcureText == obcureText)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,uiStatus,nameController,emailController,passwordController,authenticated,obcureText,error);

@override
String toString() {
  return 'RegisterState(status: $status, uiStatus: $uiStatus, nameController: $nameController, emailController: $emailController, passwordController: $passwordController, authenticated: $authenticated, obcureText: $obcureText, error: $error)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 RequestStatus status, UIResponseStatus uiStatus, TextEditingController nameController, TextEditingController emailController, TextEditingController passwordController, bool authenticated, bool obcureText, Failure? error
});




}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? uiStatus = null,Object? nameController = null,Object? emailController = null,Object? passwordController = null,Object? authenticated = null,Object? obcureText = null,Object? error = freezed,}) {
  return _then(_RegisterState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as UIResponseStatus,nameController: null == nameController ? _self.nameController : nameController // ignore: cast_nullable_to_non_nullable
as TextEditingController,emailController: null == emailController ? _self.emailController : emailController // ignore: cast_nullable_to_non_nullable
as TextEditingController,passwordController: null == passwordController ? _self.passwordController : passwordController // ignore: cast_nullable_to_non_nullable
as TextEditingController,authenticated: null == authenticated ? _self.authenticated : authenticated // ignore: cast_nullable_to_non_nullable
as bool,obcureText: null == obcureText ? _self.obcureText : obcureText // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
