// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'equipment_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EquipmentTypeTearOff {
  const _$EquipmentTypeTearOff();

  _EquipmentType call(
      {required int id,
      required String name,
      required int duration,
      required List<Equipment> equipments}) {
    return _EquipmentType(
      id: id,
      name: name,
      duration: duration,
      equipments: equipments,
    );
  }
}

/// @nodoc
const $EquipmentType = _$EquipmentTypeTearOff();

/// @nodoc
mixin _$EquipmentType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  List<Equipment> get equipments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentTypeCopyWith<EquipmentType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentTypeCopyWith<$Res> {
  factory $EquipmentTypeCopyWith(
          EquipmentType value, $Res Function(EquipmentType) then) =
      _$EquipmentTypeCopyWithImpl<$Res>;
  $Res call({int id, String name, int duration, List<Equipment> equipments});
}

/// @nodoc
class _$EquipmentTypeCopyWithImpl<$Res>
    implements $EquipmentTypeCopyWith<$Res> {
  _$EquipmentTypeCopyWithImpl(this._value, this._then);

  final EquipmentType _value;
  // ignore: unused_field
  final $Res Function(EquipmentType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? equipments = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      equipments: equipments == freezed
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
    ));
  }
}

/// @nodoc
abstract class _$EquipmentTypeCopyWith<$Res>
    implements $EquipmentTypeCopyWith<$Res> {
  factory _$EquipmentTypeCopyWith(
          _EquipmentType value, $Res Function(_EquipmentType) then) =
      __$EquipmentTypeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, int duration, List<Equipment> equipments});
}

/// @nodoc
class __$EquipmentTypeCopyWithImpl<$Res>
    extends _$EquipmentTypeCopyWithImpl<$Res>
    implements _$EquipmentTypeCopyWith<$Res> {
  __$EquipmentTypeCopyWithImpl(
      _EquipmentType _value, $Res Function(_EquipmentType) _then)
      : super(_value, (v) => _then(v as _EquipmentType));

  @override
  _EquipmentType get _value => super._value as _EquipmentType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? equipments = freezed,
  }) {
    return _then(_EquipmentType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      equipments: equipments == freezed
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
    ));
  }
}

/// @nodoc

class _$_EquipmentType implements _EquipmentType {
  const _$_EquipmentType(
      {required this.id,
      required this.name,
      required this.duration,
      required this.equipments});

  @override
  final int id;
  @override
  final String name;
  @override
  final int duration;
  @override
  final List<Equipment> equipments;

  @override
  String toString() {
    return 'EquipmentType(id: $id, name: $name, duration: $duration, equipments: $equipments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EquipmentType &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.equipments, equipments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(equipments));

  @JsonKey(ignore: true)
  @override
  _$EquipmentTypeCopyWith<_EquipmentType> get copyWith =>
      __$EquipmentTypeCopyWithImpl<_EquipmentType>(this, _$identity);
}

abstract class _EquipmentType implements EquipmentType {
  const factory _EquipmentType(
      {required int id,
      required String name,
      required int duration,
      required List<Equipment> equipments}) = _$_EquipmentType;

  @override
  int get id;
  @override
  String get name;
  @override
  int get duration;
  @override
  List<Equipment> get equipments;
  @override
  @JsonKey(ignore: true)
  _$EquipmentTypeCopyWith<_EquipmentType> get copyWith =>
      throw _privateConstructorUsedError;
}
