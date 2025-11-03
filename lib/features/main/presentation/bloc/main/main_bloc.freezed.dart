// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainEvent()';
}


}

/// @nodoc
class $MainEventCopyWith<$Res>  {
$MainEventCopyWith(MainEvent _, $Res Function(MainEvent) __);
}


/// Adds pattern-matching-related methods to [MainEvent].
extension MainEventPatterns on MainEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetMenuWithLink value)?  getMenuWithLink,TResult Function( _UpdateIndex value)?  updateIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetMenuWithLink() when getMenuWithLink != null:
return getMenuWithLink(_that);case _UpdateIndex() when updateIndex != null:
return updateIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetMenuWithLink value)  getMenuWithLink,required TResult Function( _UpdateIndex value)  updateIndex,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetMenuWithLink():
return getMenuWithLink(_that);case _UpdateIndex():
return updateIndex(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetMenuWithLink value)?  getMenuWithLink,TResult? Function( _UpdateIndex value)?  updateIndex,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetMenuWithLink() when getMenuWithLink != null:
return getMenuWithLink(_that);case _UpdateIndex() when updateIndex != null:
return updateIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<MainNavBarMenuEntity> menus)?  started,TResult Function( String key)?  getMenuWithLink,TResult Function( int index)?  updateIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.menus);case _GetMenuWithLink() when getMenuWithLink != null:
return getMenuWithLink(_that.key);case _UpdateIndex() when updateIndex != null:
return updateIndex(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<MainNavBarMenuEntity> menus)  started,required TResult Function( String key)  getMenuWithLink,required TResult Function( int index)  updateIndex,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.menus);case _GetMenuWithLink():
return getMenuWithLink(_that.key);case _UpdateIndex():
return updateIndex(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<MainNavBarMenuEntity> menus)?  started,TResult? Function( String key)?  getMenuWithLink,TResult? Function( int index)?  updateIndex,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.menus);case _GetMenuWithLink() when getMenuWithLink != null:
return getMenuWithLink(_that.key);case _UpdateIndex() when updateIndex != null:
return updateIndex(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MainEvent {
   _Started({required final  List<MainNavBarMenuEntity> menus}): _menus = menus;
  

 final  List<MainNavBarMenuEntity> _menus;
 List<MainNavBarMenuEntity> get menus {
  if (_menus is EqualUnmodifiableListView) return _menus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_menus);
}


/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&const DeepCollectionEquality().equals(other._menus, _menus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_menus));

@override
String toString() {
  return 'MainEvent.started(menus: $menus)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $MainEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 List<MainNavBarMenuEntity> menus
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? menus = null,}) {
  return _then(_Started(
menus: null == menus ? _self._menus : menus // ignore: cast_nullable_to_non_nullable
as List<MainNavBarMenuEntity>,
  ));
}


}

/// @nodoc


class _GetMenuWithLink implements MainEvent {
   _GetMenuWithLink({required this.key});
  

 final  String key;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMenuWithLinkCopyWith<_GetMenuWithLink> get copyWith => __$GetMenuWithLinkCopyWithImpl<_GetMenuWithLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMenuWithLink&&(identical(other.key, key) || other.key == key));
}


@override
int get hashCode => Object.hash(runtimeType,key);

@override
String toString() {
  return 'MainEvent.getMenuWithLink(key: $key)';
}


}

/// @nodoc
abstract mixin class _$GetMenuWithLinkCopyWith<$Res> implements $MainEventCopyWith<$Res> {
  factory _$GetMenuWithLinkCopyWith(_GetMenuWithLink value, $Res Function(_GetMenuWithLink) _then) = __$GetMenuWithLinkCopyWithImpl;
@useResult
$Res call({
 String key
});




}
/// @nodoc
class __$GetMenuWithLinkCopyWithImpl<$Res>
    implements _$GetMenuWithLinkCopyWith<$Res> {
  __$GetMenuWithLinkCopyWithImpl(this._self, this._then);

  final _GetMenuWithLink _self;
  final $Res Function(_GetMenuWithLink) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? key = null,}) {
  return _then(_GetMenuWithLink(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateIndex implements MainEvent {
   _UpdateIndex({required this.index});
  

 final  int index;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateIndexCopyWith<_UpdateIndex> get copyWith => __$UpdateIndexCopyWithImpl<_UpdateIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateIndex&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'MainEvent.updateIndex(index: $index)';
}


}

/// @nodoc
abstract mixin class _$UpdateIndexCopyWith<$Res> implements $MainEventCopyWith<$Res> {
  factory _$UpdateIndexCopyWith(_UpdateIndex value, $Res Function(_UpdateIndex) _then) = __$UpdateIndexCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$UpdateIndexCopyWithImpl<$Res>
    implements _$UpdateIndexCopyWith<$Res> {
  __$UpdateIndexCopyWithImpl(this._self, this._then);

  final _UpdateIndex _self;
  final $Res Function(_UpdateIndex) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_UpdateIndex(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MainState {

 List<MainNavBarMenuEntity>? get menus; int? get menuIndex;
/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainStateCopyWith<MainState> get copyWith => _$MainStateCopyWithImpl<MainState>(this as MainState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainState&&const DeepCollectionEquality().equals(other.menus, menus)&&(identical(other.menuIndex, menuIndex) || other.menuIndex == menuIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(menus),menuIndex);

@override
String toString() {
  return 'MainState(menus: $menus, menuIndex: $menuIndex)';
}


}

/// @nodoc
abstract mixin class $MainStateCopyWith<$Res>  {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) _then) = _$MainStateCopyWithImpl;
@useResult
$Res call({
 List<MainNavBarMenuEntity>? menus, int? menuIndex
});




}
/// @nodoc
class _$MainStateCopyWithImpl<$Res>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._self, this._then);

  final MainState _self;
  final $Res Function(MainState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menus = freezed,Object? menuIndex = freezed,}) {
  return _then(_self.copyWith(
menus: freezed == menus ? _self.menus : menus // ignore: cast_nullable_to_non_nullable
as List<MainNavBarMenuEntity>?,menuIndex: freezed == menuIndex ? _self.menuIndex : menuIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MainState].
extension MainStatePatterns on MainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainState value)  $default,){
final _that = this;
switch (_that) {
case _MainState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainState value)?  $default,){
final _that = this;
switch (_that) {
case _MainState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MainNavBarMenuEntity>? menus,  int? menuIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainState() when $default != null:
return $default(_that.menus,_that.menuIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MainNavBarMenuEntity>? menus,  int? menuIndex)  $default,) {final _that = this;
switch (_that) {
case _MainState():
return $default(_that.menus,_that.menuIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MainNavBarMenuEntity>? menus,  int? menuIndex)?  $default,) {final _that = this;
switch (_that) {
case _MainState() when $default != null:
return $default(_that.menus,_that.menuIndex);case _:
  return null;

}
}

}

/// @nodoc


class _MainState implements MainState {
  const _MainState({final  List<MainNavBarMenuEntity>? menus = null, this.menuIndex = null}): _menus = menus;
  

 final  List<MainNavBarMenuEntity>? _menus;
@override@JsonKey() List<MainNavBarMenuEntity>? get menus {
  final value = _menus;
  if (value == null) return null;
  if (_menus is EqualUnmodifiableListView) return _menus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  int? menuIndex;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainStateCopyWith<_MainState> get copyWith => __$MainStateCopyWithImpl<_MainState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainState&&const DeepCollectionEquality().equals(other._menus, _menus)&&(identical(other.menuIndex, menuIndex) || other.menuIndex == menuIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_menus),menuIndex);

@override
String toString() {
  return 'MainState(menus: $menus, menuIndex: $menuIndex)';
}


}

/// @nodoc
abstract mixin class _$MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(_MainState value, $Res Function(_MainState) _then) = __$MainStateCopyWithImpl;
@override @useResult
$Res call({
 List<MainNavBarMenuEntity>? menus, int? menuIndex
});




}
/// @nodoc
class __$MainStateCopyWithImpl<$Res>
    implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(this._self, this._then);

  final _MainState _self;
  final $Res Function(_MainState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menus = freezed,Object? menuIndex = freezed,}) {
  return _then(_MainState(
menus: freezed == menus ? _self._menus : menus // ignore: cast_nullable_to_non_nullable
as List<MainNavBarMenuEntity>?,menuIndex: freezed == menuIndex ? _self.menuIndex : menuIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
