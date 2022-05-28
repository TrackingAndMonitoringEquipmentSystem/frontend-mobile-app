// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'role_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoleDataTearOff {
  const _$RoleDataTearOff();

  _RoleData call(
      {required int id,
      required String? name,
      required Map<String, dynamic>? permission}) {
    return _RoleData(
      id: id,
      name: name,
      permission: permission,
    );
  }
}

/// @nodoc
const $RoleData = _$RoleDataTearOff();

/// @nodoc
mixin _$RoleData {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Map<String, dynamic>? get permission => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleDataCopyWith<RoleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleDataCopyWith<$Res> {
  factory $RoleDataCopyWith(RoleData value, $Res Function(RoleData) then) =
      _$RoleDataCopyWithImpl<$Res>;
  $Res call({int id, String? name, Map<String, dynamic>? permission});
}

/// @nodoc
class _$RoleDataCopyWithImpl<$Res> implements $RoleDataCopyWith<$Res> {
  _$RoleDataCopyWithImpl(this._value, this._then);

  final RoleData _value;
  // ignore: unused_field
  final $Res Function(RoleData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? permission = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$RoleDataCopyWith<$Res> implements $RoleDataCopyWith<$Res> {
  factory _$RoleDataCopyWith(_RoleData value, $Res Function(_RoleData) then) =
      __$RoleDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? name, Map<String, dynamic>? permission});
}

/// @nodoc
class __$RoleDataCopyWithImpl<$Res> extends _$RoleDataCopyWithImpl<$Res>
    implements _$RoleDataCopyWith<$Res> {
  __$RoleDataCopyWithImpl(_RoleData _value, $Res Function(_RoleData) _then)
      : super(_value, (v) => _then(v as _RoleData));

  @override
  _RoleData get _value => super._value as _RoleData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? permission = freezed,
  }) {
    return _then(_RoleData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_RoleData implements _RoleData {
  const _$_RoleData(
      {required this.id, required this.name, required this.permission});

  @override
  final int id;
  @override
  final String? name;
  @override
  final Map<String, dynamic>? permission;

  @override
  String toString() {
    return 'RoleData(id: $id, name: $name, permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoleData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.permission, permission));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(permission));

  @JsonKey(ignore: true)
  @override
  _$RoleDataCopyWith<_RoleData> get copyWith =>
      __$RoleDataCopyWithImpl<_RoleData>(this, _$identity);
}

abstract class _RoleData implements RoleData {
  const factory _RoleData(
      {required int id,
      required String? name,
      required Map<String, dynamic>? permission}) = _$_RoleData;

  @override
  int get id;
  @override
  String? get name;
  @override
  Map<String, dynamic>? get permission;
  @override
  @JsonKey(ignore: true)
  _$RoleDataCopyWith<_RoleData> get copyWith =>
      throw _privateConstructorUsedError;
}
