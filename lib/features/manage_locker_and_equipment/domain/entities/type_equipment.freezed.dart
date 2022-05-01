// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'type_equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TypeEquipmentTearOff {
  const _$TypeEquipmentTearOff();

  _TypeEquipment call(
      {required int? id,
      required String name,
      required int? duration,
      required EquipmentStatus? status,
      required String? picUrl}) {
    return _TypeEquipment(
      id: id,
      name: name,
      duration: duration,
      status: status,
      picUrl: picUrl,
    );
  }
}

/// @nodoc
const $TypeEquipment = _$TypeEquipmentTearOff();

/// @nodoc
mixin _$TypeEquipment {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  EquipmentStatus? get status => throw _privateConstructorUsedError;
  String? get picUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypeEquipmentCopyWith<TypeEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeEquipmentCopyWith<$Res> {
  factory $TypeEquipmentCopyWith(
          TypeEquipment value, $Res Function(TypeEquipment) then) =
      _$TypeEquipmentCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String name,
      int? duration,
      EquipmentStatus? status,
      String? picUrl});
}

/// @nodoc
class _$TypeEquipmentCopyWithImpl<$Res>
    implements $TypeEquipmentCopyWith<$Res> {
  _$TypeEquipmentCopyWithImpl(this._value, this._then);

  final TypeEquipment _value;
  // ignore: unused_field
  final $Res Function(TypeEquipment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? picUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EquipmentStatus?,
      picUrl: picUrl == freezed
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TypeEquipmentCopyWith<$Res>
    implements $TypeEquipmentCopyWith<$Res> {
  factory _$TypeEquipmentCopyWith(
          _TypeEquipment value, $Res Function(_TypeEquipment) then) =
      __$TypeEquipmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String name,
      int? duration,
      EquipmentStatus? status,
      String? picUrl});
}

/// @nodoc
class __$TypeEquipmentCopyWithImpl<$Res>
    extends _$TypeEquipmentCopyWithImpl<$Res>
    implements _$TypeEquipmentCopyWith<$Res> {
  __$TypeEquipmentCopyWithImpl(
      _TypeEquipment _value, $Res Function(_TypeEquipment) _then)
      : super(_value, (v) => _then(v as _TypeEquipment));

  @override
  _TypeEquipment get _value => super._value as _TypeEquipment;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? picUrl = freezed,
  }) {
    return _then(_TypeEquipment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EquipmentStatus?,
      picUrl: picUrl == freezed
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TypeEquipment implements _TypeEquipment {
  const _$_TypeEquipment(
      {required this.id,
      required this.name,
      required this.duration,
      required this.status,
      required this.picUrl});

  @override
  final int? id;
  @override
  final String name;
  @override
  final int? duration;
  @override
  final EquipmentStatus? status;
  @override
  final String? picUrl;

  @override
  String toString() {
    return 'TypeEquipment(id: $id, name: $name, duration: $duration, status: $status, picUrl: $picUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeEquipment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.picUrl, picUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(picUrl));

  @JsonKey(ignore: true)
  @override
  _$TypeEquipmentCopyWith<_TypeEquipment> get copyWith =>
      __$TypeEquipmentCopyWithImpl<_TypeEquipment>(this, _$identity);
}

abstract class _TypeEquipment implements TypeEquipment {
  const factory _TypeEquipment(
      {required int? id,
      required String name,
      required int? duration,
      required EquipmentStatus? status,
      required String? picUrl}) = _$_TypeEquipment;

  @override
  int? get id;
  @override
  String get name;
  @override
  int? get duration;
  @override
  EquipmentStatus? get status;
  @override
  String? get picUrl;
  @override
  @JsonKey(ignore: true)
  _$TypeEquipmentCopyWith<_TypeEquipment> get copyWith =>
      throw _privateConstructorUsedError;
}
