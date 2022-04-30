// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'borrowing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BorrowingTearOff {
  const _$BorrowingTearOff();

  _Borrowing call(
      {required int id,
      required BorrowingStatus status,
      required DateTime borrowedAt,
      required DateTime deadlineAt,
      required DateTime? returnedAt,
      required Equipment equipment}) {
    return _Borrowing(
      id: id,
      status: status,
      borrowedAt: borrowedAt,
      deadlineAt: deadlineAt,
      returnedAt: returnedAt,
      equipment: equipment,
    );
  }
}

/// @nodoc
const $Borrowing = _$BorrowingTearOff();

/// @nodoc
mixin _$Borrowing {
  int get id => throw _privateConstructorUsedError;
  BorrowingStatus get status => throw _privateConstructorUsedError;
  DateTime get borrowedAt => throw _privateConstructorUsedError;
  DateTime get deadlineAt => throw _privateConstructorUsedError;
  DateTime? get returnedAt => throw _privateConstructorUsedError;
  Equipment get equipment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BorrowingCopyWith<Borrowing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BorrowingCopyWith<$Res> {
  factory $BorrowingCopyWith(Borrowing value, $Res Function(Borrowing) then) =
      _$BorrowingCopyWithImpl<$Res>;
  $Res call(
      {int id,
      BorrowingStatus status,
      DateTime borrowedAt,
      DateTime deadlineAt,
      DateTime? returnedAt,
      Equipment equipment});

  $EquipmentCopyWith<$Res> get equipment;
}

/// @nodoc
class _$BorrowingCopyWithImpl<$Res> implements $BorrowingCopyWith<$Res> {
  _$BorrowingCopyWithImpl(this._value, this._then);

  final Borrowing _value;
  // ignore: unused_field
  final $Res Function(Borrowing) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? borrowedAt = freezed,
    Object? deadlineAt = freezed,
    Object? returnedAt = freezed,
    Object? equipment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BorrowingStatus,
      borrowedAt: borrowedAt == freezed
          ? _value.borrowedAt
          : borrowedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadlineAt: deadlineAt == freezed
          ? _value.deadlineAt
          : deadlineAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      returnedAt: returnedAt == freezed
          ? _value.returnedAt
          : returnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment,
    ));
  }

  @override
  $EquipmentCopyWith<$Res> get equipment {
    return $EquipmentCopyWith<$Res>(_value.equipment, (value) {
      return _then(_value.copyWith(equipment: value));
    });
  }
}

/// @nodoc
abstract class _$BorrowingCopyWith<$Res> implements $BorrowingCopyWith<$Res> {
  factory _$BorrowingCopyWith(
          _Borrowing value, $Res Function(_Borrowing) then) =
      __$BorrowingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      BorrowingStatus status,
      DateTime borrowedAt,
      DateTime deadlineAt,
      DateTime? returnedAt,
      Equipment equipment});

  @override
  $EquipmentCopyWith<$Res> get equipment;
}

/// @nodoc
class __$BorrowingCopyWithImpl<$Res> extends _$BorrowingCopyWithImpl<$Res>
    implements _$BorrowingCopyWith<$Res> {
  __$BorrowingCopyWithImpl(_Borrowing _value, $Res Function(_Borrowing) _then)
      : super(_value, (v) => _then(v as _Borrowing));

  @override
  _Borrowing get _value => super._value as _Borrowing;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? borrowedAt = freezed,
    Object? deadlineAt = freezed,
    Object? returnedAt = freezed,
    Object? equipment = freezed,
  }) {
    return _then(_Borrowing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BorrowingStatus,
      borrowedAt: borrowedAt == freezed
          ? _value.borrowedAt
          : borrowedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadlineAt: deadlineAt == freezed
          ? _value.deadlineAt
          : deadlineAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      returnedAt: returnedAt == freezed
          ? _value.returnedAt
          : returnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as Equipment,
    ));
  }
}

/// @nodoc

class _$_Borrowing implements _Borrowing {
  const _$_Borrowing(
      {required this.id,
      required this.status,
      required this.borrowedAt,
      required this.deadlineAt,
      required this.returnedAt,
      required this.equipment});

  @override
  final int id;
  @override
  final BorrowingStatus status;
  @override
  final DateTime borrowedAt;
  @override
  final DateTime deadlineAt;
  @override
  final DateTime? returnedAt;
  @override
  final Equipment equipment;

  @override
  String toString() {
    return 'Borrowing(id: $id, status: $status, borrowedAt: $borrowedAt, deadlineAt: $deadlineAt, returnedAt: $returnedAt, equipment: $equipment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Borrowing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.borrowedAt, borrowedAt) &&
            const DeepCollectionEquality()
                .equals(other.deadlineAt, deadlineAt) &&
            const DeepCollectionEquality()
                .equals(other.returnedAt, returnedAt) &&
            const DeepCollectionEquality().equals(other.equipment, equipment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(borrowedAt),
      const DeepCollectionEquality().hash(deadlineAt),
      const DeepCollectionEquality().hash(returnedAt),
      const DeepCollectionEquality().hash(equipment));

  @JsonKey(ignore: true)
  @override
  _$BorrowingCopyWith<_Borrowing> get copyWith =>
      __$BorrowingCopyWithImpl<_Borrowing>(this, _$identity);
}

abstract class _Borrowing implements Borrowing {
  const factory _Borrowing(
      {required int id,
      required BorrowingStatus status,
      required DateTime borrowedAt,
      required DateTime deadlineAt,
      required DateTime? returnedAt,
      required Equipment equipment}) = _$_Borrowing;

  @override
  int get id;
  @override
  BorrowingStatus get status;
  @override
  DateTime get borrowedAt;
  @override
  DateTime get deadlineAt;
  @override
  DateTime? get returnedAt;
  @override
  Equipment get equipment;
  @override
  @JsonKey(ignore: true)
  _$BorrowingCopyWith<_Borrowing> get copyWith =>
      throw _privateConstructorUsedError;
}
