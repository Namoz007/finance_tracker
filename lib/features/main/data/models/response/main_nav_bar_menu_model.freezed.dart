// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_nav_bar_menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainNavBarMenuModel {

 String get name; IconData get icon; Widget get page; String get key; VoidCallback get onTap;
/// Create a copy of MainNavBarMenuModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainNavBarMenuModelCopyWith<MainNavBarMenuModel> get copyWith => _$MainNavBarMenuModelCopyWithImpl<MainNavBarMenuModel>(this as MainNavBarMenuModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainNavBarMenuModel&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.page, page) || other.page == page)&&(identical(other.key, key) || other.key == key)&&(identical(other.onTap, onTap) || other.onTap == onTap));
}


@override
int get hashCode => Object.hash(runtimeType,name,icon,page,key,onTap);

@override
String toString() {
  return 'MainNavBarMenuModel(name: $name, icon: $icon, page: $page, key: $key, onTap: $onTap)';
}


}

/// @nodoc
abstract mixin class $MainNavBarMenuModelCopyWith<$Res>  {
  factory $MainNavBarMenuModelCopyWith(MainNavBarMenuModel value, $Res Function(MainNavBarMenuModel) _then) = _$MainNavBarMenuModelCopyWithImpl;
@useResult
$Res call({
 String name, IconData icon, Widget page, String key, VoidCallback onTap
});




}
/// @nodoc
class _$MainNavBarMenuModelCopyWithImpl<$Res>
    implements $MainNavBarMenuModelCopyWith<$Res> {
  _$MainNavBarMenuModelCopyWithImpl(this._self, this._then);

  final MainNavBarMenuModel _self;
  final $Res Function(MainNavBarMenuModel) _then;

/// Create a copy of MainNavBarMenuModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? icon = null,Object? page = null,Object? key = null,Object? onTap = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as Widget,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,onTap: null == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}

}


/// Adds pattern-matching-related methods to [MainNavBarMenuModel].
extension MainNavBarMenuModelPatterns on MainNavBarMenuModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainNavBarMenuModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainNavBarMenuModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainNavBarMenuModel value)  $default,){
final _that = this;
switch (_that) {
case _MainNavBarMenuModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainNavBarMenuModel value)?  $default,){
final _that = this;
switch (_that) {
case _MainNavBarMenuModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  IconData icon,  Widget page,  String key,  VoidCallback onTap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainNavBarMenuModel() when $default != null:
return $default(_that.name,_that.icon,_that.page,_that.key,_that.onTap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  IconData icon,  Widget page,  String key,  VoidCallback onTap)  $default,) {final _that = this;
switch (_that) {
case _MainNavBarMenuModel():
return $default(_that.name,_that.icon,_that.page,_that.key,_that.onTap);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  IconData icon,  Widget page,  String key,  VoidCallback onTap)?  $default,) {final _that = this;
switch (_that) {
case _MainNavBarMenuModel() when $default != null:
return $default(_that.name,_that.icon,_that.page,_that.key,_that.onTap);case _:
  return null;

}
}

}

/// @nodoc


class _MainNavBarMenuModel extends MainNavBarMenuModel {
   _MainNavBarMenuModel({required this.name, required this.icon, required this.page, required this.key, required this.onTap}): super._();
  

@override final  String name;
@override final  IconData icon;
@override final  Widget page;
@override final  String key;
@override final  VoidCallback onTap;

/// Create a copy of MainNavBarMenuModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainNavBarMenuModelCopyWith<_MainNavBarMenuModel> get copyWith => __$MainNavBarMenuModelCopyWithImpl<_MainNavBarMenuModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainNavBarMenuModel&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.page, page) || other.page == page)&&(identical(other.key, key) || other.key == key)&&(identical(other.onTap, onTap) || other.onTap == onTap));
}


@override
int get hashCode => Object.hash(runtimeType,name,icon,page,key,onTap);

@override
String toString() {
  return 'MainNavBarMenuModel(name: $name, icon: $icon, page: $page, key: $key, onTap: $onTap)';
}


}

/// @nodoc
abstract mixin class _$MainNavBarMenuModelCopyWith<$Res> implements $MainNavBarMenuModelCopyWith<$Res> {
  factory _$MainNavBarMenuModelCopyWith(_MainNavBarMenuModel value, $Res Function(_MainNavBarMenuModel) _then) = __$MainNavBarMenuModelCopyWithImpl;
@override @useResult
$Res call({
 String name, IconData icon, Widget page, String key, VoidCallback onTap
});




}
/// @nodoc
class __$MainNavBarMenuModelCopyWithImpl<$Res>
    implements _$MainNavBarMenuModelCopyWith<$Res> {
  __$MainNavBarMenuModelCopyWithImpl(this._self, this._then);

  final _MainNavBarMenuModel _self;
  final $Res Function(_MainNavBarMenuModel) _then;

/// Create a copy of MainNavBarMenuModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? icon = null,Object? page = null,Object? key = null,Object? onTap = null,}) {
  return _then(_MainNavBarMenuModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as Widget,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,onTap: null == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}


}

// dart format on
