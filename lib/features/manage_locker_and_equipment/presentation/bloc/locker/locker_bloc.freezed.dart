// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LockerEventTearOff {
  const _$LockerEventTearOff();

  InitState initState() {
    return const InitState();
  }
}

/// @nodoc
const $LockerEvent = _$LockerEventTearOff();

/// @nodoc
mixin _$LockerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? initState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockerEventCopyWith<$Res> {
  factory $LockerEventCopyWith(
          LockerEvent value, $Res Function(LockerEvent) then) =
      _$LockerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LockerEventCopyWithImpl<$Res> implements $LockerEventCopyWith<$Res> {
  _$LockerEventCopyWithImpl(this._value, this._then);

  final LockerEvent _value;
  // ignore: unused_field
  final $Res Function(LockerEvent) _then;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> extends _$LockerEventCopyWithImpl<$Res>
    implements $InitStateCopyWith<$Res> {
  _$InitStateCopyWithImpl(InitState _value, $Res Function(InitState) _then)
      : super(_value, (v) => _then(v as InitState));

  @override
  InitState get _value => super._value as InitState;
}

/// @nodoc

class _$InitState implements InitState {
  const _$InitState();

  @override
  String toString() {
    return 'LockerEvent.initState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) initState,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? initState,
  }) {
    return initState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? initState,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class InitState implements LockerEvent {
  const factory InitState() = _$InitState;
}

/// @nodoc
class _$LockerStateTearOff {
  const _$LockerStateTearOff();

  _LockerState call({required bool isLoading, required List<Locker> lockers}) {
    return _LockerState(
      isLoading: isLoading,
      lockers: lockers,
    );
  }
}

/// @nodoc
const $LockerState = _$LockerStateTearOff();

/// @nodoc
mixin _$LockerState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Locker> get lockers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LockerStateCopyWith<LockerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockerStateCopyWith<$Res> {
  factory $LockerStateCopyWith(
          LockerState value, $Res Function(LockerState) then) =
      _$LockerStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Locker> lockers});
}

/// @nodoc
class _$LockerStateCopyWithImpl<$Res> implements $LockerStateCopyWith<$Res> {
  _$LockerStateCopyWithImpl(this._value, this._then);

  final LockerState _value;
  // ignore: unused_field
  final $Res Function(LockerState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? lockers = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lockers: lockers == freezed
          ? _value.lockers
          : lockers // ignore: cast_nullable_to_non_nullable
              as List<Locker>,
    ));
  }
}

/// @nodoc
abstract class _$LockerStateCopyWith<$Res>
    implements $LockerStateCopyWith<$Res> {
  factory _$LockerStateCopyWith(
          _LockerState value, $Res Function(_LockerState) then) =
      __$LockerStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Locker> lockers});
}

/// @nodoc
class __$LockerStateCopyWithImpl<$Res> extends _$LockerStateCopyWithImpl<$Res>
    implements _$LockerStateCopyWith<$Res> {
  __$LockerStateCopyWithImpl(
      _LockerState _value, $Res Function(_LockerState) _then)
      : super(_value, (v) => _then(v as _LockerState));

  @override
  _LockerState get _value => super._value as _LockerState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? lockers = freezed,
  }) {
    return _then(_LockerState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lockers: lockers == freezed
          ? _value.lockers
          : lockers // ignore: cast_nullable_to_non_nullable
              as List<Locker>,
    ));
  }
}

/// @nodoc

class _$_LockerState implements _LockerState {
  const _$_LockerState({required this.isLoading, required this.lockers});

  @override
  final bool isLoading;
  @override
  final List<Locker> lockers;

  @override
  String toString() {
    return 'LockerState(isLoading: $isLoading, lockers: $lockers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LockerState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.lockers, lockers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(lockers));

  @JsonKey(ignore: true)
  @override
  _$LockerStateCopyWith<_LockerState> get copyWith =>
      __$LockerStateCopyWithImpl<_LockerState>(this, _$identity);
}

abstract class _LockerState implements LockerState {
  const factory _LockerState(
      {required bool isLoading,
      required List<Locker> lockers}) = _$_LockerState;

  @override
  bool get isLoading;
  @override
  List<Locker> get lockers;
  @override
  @JsonKey(ignore: true)
  _$LockerStateCopyWith<_LockerState> get copyWith =>
      throw _privateConstructorUsedError;
}
