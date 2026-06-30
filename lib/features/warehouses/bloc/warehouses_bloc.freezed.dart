// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WarehousesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehousesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehousesEvent()';
}


}

/// @nodoc
class $WarehousesEventCopyWith<$Res>  {
$WarehousesEventCopyWith(WarehousesEvent _, $Res Function(WarehousesEvent) __);
}


/// Adds pattern-matching-related methods to [WarehousesEvent].
extension WarehousesEventPatterns on WarehousesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadWarehouses value)?  loadWarehouses,TResult Function( _CreateWarehouse value)?  createWarehouse,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadWarehouses() when loadWarehouses != null:
return loadWarehouses(_that);case _CreateWarehouse() when createWarehouse != null:
return createWarehouse(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadWarehouses value)  loadWarehouses,required TResult Function( _CreateWarehouse value)  createWarehouse,}){
final _that = this;
switch (_that) {
case _LoadWarehouses():
return loadWarehouses(_that);case _CreateWarehouse():
return createWarehouse(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadWarehouses value)?  loadWarehouses,TResult? Function( _CreateWarehouse value)?  createWarehouse,}){
final _that = this;
switch (_that) {
case _LoadWarehouses() when loadWarehouses != null:
return loadWarehouses(_that);case _CreateWarehouse() when createWarehouse != null:
return createWarehouse(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadWarehouses,TResult Function( String name)?  createWarehouse,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadWarehouses() when loadWarehouses != null:
return loadWarehouses();case _CreateWarehouse() when createWarehouse != null:
return createWarehouse(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadWarehouses,required TResult Function( String name)  createWarehouse,}) {final _that = this;
switch (_that) {
case _LoadWarehouses():
return loadWarehouses();case _CreateWarehouse():
return createWarehouse(_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadWarehouses,TResult? Function( String name)?  createWarehouse,}) {final _that = this;
switch (_that) {
case _LoadWarehouses() when loadWarehouses != null:
return loadWarehouses();case _CreateWarehouse() when createWarehouse != null:
return createWarehouse(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _LoadWarehouses implements WarehousesEvent {
  const _LoadWarehouses();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadWarehouses);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehousesEvent.loadWarehouses()';
}


}




/// @nodoc


class _CreateWarehouse implements WarehousesEvent {
  const _CreateWarehouse(this.name);
  

 final  String name;

/// Create a copy of WarehousesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateWarehouseCopyWith<_CreateWarehouse> get copyWith => __$CreateWarehouseCopyWithImpl<_CreateWarehouse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateWarehouse&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'WarehousesEvent.createWarehouse(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreateWarehouseCopyWith<$Res> implements $WarehousesEventCopyWith<$Res> {
  factory _$CreateWarehouseCopyWith(_CreateWarehouse value, $Res Function(_CreateWarehouse) _then) = __$CreateWarehouseCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$CreateWarehouseCopyWithImpl<$Res>
    implements _$CreateWarehouseCopyWith<$Res> {
  __$CreateWarehouseCopyWithImpl(this._self, this._then);

  final _CreateWarehouse _self;
  final $Res Function(_CreateWarehouse) _then;

/// Create a copy of WarehousesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_CreateWarehouse(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$WarehousesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehousesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehousesState()';
}


}

/// @nodoc
class $WarehousesStateCopyWith<$Res>  {
$WarehousesStateCopyWith(WarehousesState _, $Res Function(WarehousesState) __);
}


/// Adds pattern-matching-related methods to [WarehousesState].
extension WarehousesStatePatterns on WarehousesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Warehouse> warehouses)?  loaded,TResult Function( String msg)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.warehouses);case _Error() when error != null:
return error(_that.msg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Warehouse> warehouses)  loaded,required TResult Function( String msg)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.warehouses);case _Error():
return error(_that.msg);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Warehouse> warehouses)?  loaded,TResult? Function( String msg)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.warehouses);case _Error() when error != null:
return error(_that.msg);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements WarehousesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehousesState.initial()';
}


}




/// @nodoc


class _Loading implements WarehousesState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehousesState.loading()';
}


}




/// @nodoc


class _Loaded implements WarehousesState {
  const _Loaded( List<Warehouse> warehouses): _warehouses = warehouses;
  

 final  List<Warehouse> _warehouses;
 List<Warehouse> get warehouses {
  if (_warehouses is EqualUnmodifiableListView) return _warehouses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warehouses);
}


/// Create a copy of WarehousesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._warehouses, _warehouses));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_warehouses));

@override
String toString() {
  return 'WarehousesState.loaded(warehouses: $warehouses)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $WarehousesStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<Warehouse> warehouses
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of WarehousesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? warehouses = null,}) {
  return _then(_Loaded(
null == warehouses ? _self._warehouses : warehouses // ignore: cast_nullable_to_non_nullable
as List<Warehouse>,
  ));
}


}

/// @nodoc


class _Error implements WarehousesState {
  const _Error(this.msg);
  

 final  String msg;

/// Create a copy of WarehousesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,msg);

@override
String toString() {
  return 'WarehousesState.error(msg: $msg)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $WarehousesStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String msg
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of WarehousesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? msg = null,}) {
  return _then(_Error(
null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
