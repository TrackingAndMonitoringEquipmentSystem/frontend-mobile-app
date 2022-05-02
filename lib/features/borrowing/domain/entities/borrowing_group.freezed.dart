// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'borrowing_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BorrowingGroupTearOff {
  const _$BorrowingGroupTearOff();

  _BorrowingGroup call({required int id, required List<Borrowing> borrowings}) {
    return _BorrowingGroup(
      id: id,
      borrowings: borrowings,
    );
  }
}

/// @nodoc
const $BorrowingGroup = _$BorrowingGroupTearOff();

/// @nodoc
mixin _$BorrowingGroup {
  int get id => throw _privateConstructorUsedError;
  List<Borrowing> get borrowings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BorrowingGroupCopyWith<BorrowingGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BorrowingGroupCopyWith<$Res> {
  factory $BorrowingGroupCopyWith(
          BorrowingGroup value, $Res Function(BorrowingGroup) then) =
      _$BorrowingGroupCopyWithImpl<$Res>;
  $Res call({int id, List<Borrowing> borrowings});
}

/// @nodoc
class _$BorrowingGroupCopyWithImpl<$Res>
    implements $BorrowingGroupCopyWith<$Res> {
  _$BorrowingGroupCopyWithImpl(this._value, this._then);

  final BorrowingGroup _value;
  // ignore: unused_field
  final $Res Function(BorrowingGroup) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? borrowings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      borrowings: borrowings == freezed
          ? _value.borrowings
          : borrowings // ignore: cast_nullable_to_non_nullable
              as List<Borrowing>,
    ));
  }
}

/// @nodoc
abstract class _$BorrowingGroupCopyWith<$Res>
    implements $BorrowingGroupCopyWith<$Res> {
  factory _$BorrowingGroupCopyWith(
          _BorrowingGroup value, $Res Function(_BorrowingGroup) then) =
      __$BorrowingGroupCopyWithImpl<$Res>;
  @override
  $Res call({int id, List<Borrowing> borrowings});
}

/// @nodoc
class __$BorrowingGroupCopyWithImpl<$Res>
    extends _$BorrowingGroupCopyWithImpl<$Res>
    implements _$BorrowingGroupCopyWith<$Res> {
  __$BorrowingGroupCopyWithImpl(
      _BorrowingGroup _value, $Res Function(_BorrowingGroup) _then)
      : super(_value, (v) => _then(v as _BorrowingGroup));

  @override
  _BorrowingGroup get _value => super._value as _BorrowingGroup;

  @override
  $Res call({
    Object? id = freezed,
    Object? borrowings = freezed,
  }) {
    return _then(_BorrowingGroup(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      borrowings: borrowings == freezed
          ? _value.borrowings
          : borrowings // ignore: cast_nullable_to_non_nullable
              as List<Borrowing>,
    ));
  }
}

/// @nodoc

class _$_BorrowingGroup implements _BorrowingGroup {
  const _$_BorrowingGroup({required this.id, required this.borrowings});

  @override
  final int id;
  @override
  final List<Borrowing> borrowings;

  @override
  String toString() {
    return 'BorrowingGroup(id: $id, borrowings: $borrowings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BorrowingGroup &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.borrowings, borrowings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(borrowings));

  @JsonKey(ignore: true)
  @override
  _$BorrowingGroupCopyWith<_BorrowingGroup> get copyWith =>
      __$BorrowingGroupCopyWithImpl<_BorrowingGroup>(this, _$identity);
}

abstract class _BorrowingGroup implements BorrowingGroup {
  const factory _BorrowingGroup(
      {required int id,
      required List<Borrowing> borrowings}) = _$_BorrowingGroup;

  @override
  int get id;
  @override
  List<Borrowing> get borrowings;
  @override
  @JsonKey(ignore: true)
  _$BorrowingGroupCopyWith<_BorrowingGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
