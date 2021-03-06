// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'floor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FloorTearOff {
  const _$FloorTearOff();

  _Floor call(
      {required int id,
      required String name,
      required DateTime createdAt,
      required DateTime updatedAt,
      required List<Room>? rooms,
      required Building? building}) {
    return _Floor(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      rooms: rooms,
      building: building,
    );
  }
}

/// @nodoc
const $Floor = _$FloorTearOff();

/// @nodoc
mixin _$Floor {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<Room>? get rooms => throw _privateConstructorUsedError;
  Building? get building => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FloorCopyWith<Floor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorCopyWith<$Res> {
  factory $FloorCopyWith(Floor value, $Res Function(Floor) then) =
      _$FloorCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      List<Room>? rooms,
      Building? building});

  $BuildingCopyWith<$Res>? get building;
}

/// @nodoc
class _$FloorCopyWithImpl<$Res> implements $FloorCopyWith<$Res> {
  _$FloorCopyWithImpl(this._value, this._then);

  final Floor _value;
  // ignore: unused_field
  final $Res Function(Floor) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rooms = freezed,
    Object? building = freezed,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
    ));
  }

  @override
  $BuildingCopyWith<$Res>? get building {
    if (_value.building == null) {
      return null;
    }

    return $BuildingCopyWith<$Res>(_value.building!, (value) {
      return _then(_value.copyWith(building: value));
    });
  }
}

/// @nodoc
abstract class _$FloorCopyWith<$Res> implements $FloorCopyWith<$Res> {
  factory _$FloorCopyWith(_Floor value, $Res Function(_Floor) then) =
      __$FloorCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      DateTime createdAt,
      DateTime updatedAt,
      List<Room>? rooms,
      Building? building});

  @override
  $BuildingCopyWith<$Res>? get building;
}

/// @nodoc
class __$FloorCopyWithImpl<$Res> extends _$FloorCopyWithImpl<$Res>
    implements _$FloorCopyWith<$Res> {
  __$FloorCopyWithImpl(_Floor _value, $Res Function(_Floor) _then)
      : super(_value, (v) => _then(v as _Floor));

  @override
  _Floor get _value => super._value as _Floor;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rooms = freezed,
    Object? building = freezed,
  }) {
    return _then(_Floor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building?,
    ));
  }
}

/// @nodoc

class _$_Floor implements _Floor {
  const _$_Floor(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt,
      required this.rooms,
      required this.building});

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final List<Room>? rooms;
  @override
  final Building? building;

  @override
  String toString() {
    return 'Floor(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, rooms: $rooms, building: $building)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Floor &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.rooms, rooms) &&
            const DeepCollectionEquality().equals(other.building, building));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(rooms),
      const DeepCollectionEquality().hash(building));

  @JsonKey(ignore: true)
  @override
  _$FloorCopyWith<_Floor> get copyWith =>
      __$FloorCopyWithImpl<_Floor>(this, _$identity);
}

abstract class _Floor implements Floor {
  const factory _Floor(
      {required int id,
      required String name,
      required DateTime createdAt,
      required DateTime updatedAt,
      required List<Room>? rooms,
      required Building? building}) = _$_Floor;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<Room>? get rooms;
  @override
  Building? get building;
  @override
  @JsonKey(ignore: true)
  _$FloorCopyWith<_Floor> get copyWith => throw _privateConstructorUsedError;
}
