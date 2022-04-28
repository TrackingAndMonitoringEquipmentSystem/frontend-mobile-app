// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_verify_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterVerifyEmailEventTearOff {
  const _$RegisterVerifyEmailEventTearOff();

  SetState setState(RegisterVerifyEmailState state) {
    return SetState(
      state,
    );
  }

  Save save() {
    return const Save();
  }

  InitState initState() {
    return const InitState();
  }
}

/// @nodoc
const $RegisterVerifyEmailEvent = _$RegisterVerifyEmailEventTearOff();

/// @nodoc
mixin _$RegisterVerifyEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterVerifyEmailState state) setState,
    required TResult Function() save,
    required TResult Function() initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterVerifyEmailState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterVerifyEmailState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetState value) setState,
    required TResult Function(Save value) save,
    required TResult Function(InitState value) initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    TResult Function(InitState value)? initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    TResult Function(InitState value)? initState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterVerifyEmailEventCopyWith<$Res> {
  factory $RegisterVerifyEmailEventCopyWith(RegisterVerifyEmailEvent value,
          $Res Function(RegisterVerifyEmailEvent) then) =
      _$RegisterVerifyEmailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterVerifyEmailEventCopyWithImpl<$Res>
    implements $RegisterVerifyEmailEventCopyWith<$Res> {
  _$RegisterVerifyEmailEventCopyWithImpl(this._value, this._then);

  final RegisterVerifyEmailEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterVerifyEmailEvent) _then;
}

/// @nodoc
abstract class $SetStateCopyWith<$Res> {
  factory $SetStateCopyWith(SetState value, $Res Function(SetState) then) =
      _$SetStateCopyWithImpl<$Res>;
  $Res call({RegisterVerifyEmailState state});

  $RegisterVerifyEmailStateCopyWith<$Res> get state;
}

/// @nodoc
class _$SetStateCopyWithImpl<$Res>
    extends _$RegisterVerifyEmailEventCopyWithImpl<$Res>
    implements $SetStateCopyWith<$Res> {
  _$SetStateCopyWithImpl(SetState _value, $Res Function(SetState) _then)
      : super(_value, (v) => _then(v as SetState));

  @override
  SetState get _value => super._value as SetState;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(SetState(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RegisterVerifyEmailState,
    ));
  }

  @override
  $RegisterVerifyEmailStateCopyWith<$Res> get state {
    return $RegisterVerifyEmailStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$SetState implements SetState {
  const _$SetState(this.state);

  @override
  final RegisterVerifyEmailState state;

  @override
  String toString() {
    return 'RegisterVerifyEmailEvent.setState(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetState &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  $SetStateCopyWith<SetState> get copyWith =>
      _$SetStateCopyWithImpl<SetState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterVerifyEmailState state) setState,
    required TResult Function() save,
    required TResult Function() initState,
  }) {
    return setState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterVerifyEmailState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
  }) {
    return setState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterVerifyEmailState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
    required TResult orElse(),
  }) {
    if (setState != null) {
      return setState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetState value) setState,
    required TResult Function(Save value) save,
    required TResult Function(InitState value) initState,
  }) {
    return setState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    TResult Function(InitState value)? initState,
  }) {
    return setState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    TResult Function(InitState value)? initState,
    required TResult orElse(),
  }) {
    if (setState != null) {
      return setState(this);
    }
    return orElse();
  }
}

abstract class SetState implements RegisterVerifyEmailEvent {
  const factory SetState(RegisterVerifyEmailState state) = _$SetState;

  RegisterVerifyEmailState get state;
  @JsonKey(ignore: true)
  $SetStateCopyWith<SetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCopyWithImpl<$Res>
    extends _$RegisterVerifyEmailEventCopyWithImpl<$Res>
    implements $SaveCopyWith<$Res> {
  _$SaveCopyWithImpl(Save _value, $Res Function(Save) _then)
      : super(_value, (v) => _then(v as Save));

  @override
  Save get _value => super._value as Save;
}

/// @nodoc

class _$Save implements Save {
  const _$Save();

  @override
  String toString() {
    return 'RegisterVerifyEmailEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterVerifyEmailState state) setState,
    required TResult Function() save,
    required TResult Function() initState,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterVerifyEmailState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterVerifyEmailState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetState value) setState,
    required TResult Function(Save value) save,
    required TResult Function(InitState value) initState,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    TResult Function(InitState value)? initState,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    TResult Function(InitState value)? initState,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements RegisterVerifyEmailEvent {
  const factory Save() = _$Save;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res>
    extends _$RegisterVerifyEmailEventCopyWithImpl<$Res>
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
    return 'RegisterVerifyEmailEvent.initState()';
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
    required TResult Function(RegisterVerifyEmailState state) setState,
    required TResult Function() save,
    required TResult Function() initState,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterVerifyEmailState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterVerifyEmailState state)? setState,
    TResult Function()? save,
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
    required TResult Function(SetState value) setState,
    required TResult Function(Save value) save,
    required TResult Function(InitState value) initState,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    TResult Function(InitState value)? initState,
  }) {
    return initState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    TResult Function(InitState value)? initState,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class InitState implements RegisterVerifyEmailEvent {
  const factory InitState() = _$InitState;
}

/// @nodoc
class _$RegisterVerifyEmailStateTearOff {
  const _$RegisterVerifyEmailStateTearOff();

  _RegisterVerifyEmailState call(
      {required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required bool isError,
      required EmailAddress email,
      required bool isLoading,
      required AuthenticationFailure? authError}) {
    return _RegisterVerifyEmailState(
      isShowErrorMessage: isShowErrorMessage,
      isNavigateNextPage: isNavigateNextPage,
      isError: isError,
      email: email,
      isLoading: isLoading,
      authError: authError,
    );
  }
}

/// @nodoc
const $RegisterVerifyEmailState = _$RegisterVerifyEmailStateTearOff();

/// @nodoc
mixin _$RegisterVerifyEmailState {
  bool get isShowErrorMessage => throw _privateConstructorUsedError;
  bool get isNavigateNextPage => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  AuthenticationFailure? get authError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterVerifyEmailStateCopyWith<RegisterVerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterVerifyEmailStateCopyWith<$Res> {
  factory $RegisterVerifyEmailStateCopyWith(RegisterVerifyEmailState value,
          $Res Function(RegisterVerifyEmailState) then) =
      _$RegisterVerifyEmailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isShowErrorMessage,
      bool isNavigateNextPage,
      bool isError,
      EmailAddress email,
      bool isLoading,
      AuthenticationFailure? authError});

  $AuthenticationFailureCopyWith<$Res>? get authError;
}

/// @nodoc
class _$RegisterVerifyEmailStateCopyWithImpl<$Res>
    implements $RegisterVerifyEmailStateCopyWith<$Res> {
  _$RegisterVerifyEmailStateCopyWithImpl(this._value, this._then);

  final RegisterVerifyEmailState _value;
  // ignore: unused_field
  final $Res Function(RegisterVerifyEmailState) _then;

  @override
  $Res call({
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? isError = freezed,
    Object? email = freezed,
    Object? isLoading = freezed,
    Object? authError = freezed,
  }) {
    return _then(_value.copyWith(
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authError: authError == freezed
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as AuthenticationFailure?,
    ));
  }

  @override
  $AuthenticationFailureCopyWith<$Res>? get authError {
    if (_value.authError == null) {
      return null;
    }

    return $AuthenticationFailureCopyWith<$Res>(_value.authError!, (value) {
      return _then(_value.copyWith(authError: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterVerifyEmailStateCopyWith<$Res>
    implements $RegisterVerifyEmailStateCopyWith<$Res> {
  factory _$RegisterVerifyEmailStateCopyWith(_RegisterVerifyEmailState value,
          $Res Function(_RegisterVerifyEmailState) then) =
      __$RegisterVerifyEmailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isShowErrorMessage,
      bool isNavigateNextPage,
      bool isError,
      EmailAddress email,
      bool isLoading,
      AuthenticationFailure? authError});

  @override
  $AuthenticationFailureCopyWith<$Res>? get authError;
}

/// @nodoc
class __$RegisterVerifyEmailStateCopyWithImpl<$Res>
    extends _$RegisterVerifyEmailStateCopyWithImpl<$Res>
    implements _$RegisterVerifyEmailStateCopyWith<$Res> {
  __$RegisterVerifyEmailStateCopyWithImpl(_RegisterVerifyEmailState _value,
      $Res Function(_RegisterVerifyEmailState) _then)
      : super(_value, (v) => _then(v as _RegisterVerifyEmailState));

  @override
  _RegisterVerifyEmailState get _value =>
      super._value as _RegisterVerifyEmailState;

  @override
  $Res call({
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? isError = freezed,
    Object? email = freezed,
    Object? isLoading = freezed,
    Object? authError = freezed,
  }) {
    return _then(_RegisterVerifyEmailState(
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authError: authError == freezed
          ? _value.authError
          : authError // ignore: cast_nullable_to_non_nullable
              as AuthenticationFailure?,
    ));
  }
}

/// @nodoc

class _$_RegisterVerifyEmailState implements _RegisterVerifyEmailState {
  const _$_RegisterVerifyEmailState(
      {required this.isShowErrorMessage,
      required this.isNavigateNextPage,
      required this.isError,
      required this.email,
      required this.isLoading,
      required this.authError});

  @override
  final bool isShowErrorMessage;
  @override
  final bool isNavigateNextPage;
  @override
  final bool isError;
  @override
  final EmailAddress email;
  @override
  final bool isLoading;
  @override
  final AuthenticationFailure? authError;

  @override
  String toString() {
    return 'RegisterVerifyEmailState(isShowErrorMessage: $isShowErrorMessage, isNavigateNextPage: $isNavigateNextPage, isError: $isError, email: $email, isLoading: $isLoading, authError: $authError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterVerifyEmailState &&
            const DeepCollectionEquality()
                .equals(other.isShowErrorMessage, isShowErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.isNavigateNextPage, isNavigateNextPage) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.authError, authError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isShowErrorMessage),
      const DeepCollectionEquality().hash(isNavigateNextPage),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(authError));

  @JsonKey(ignore: true)
  @override
  _$RegisterVerifyEmailStateCopyWith<_RegisterVerifyEmailState> get copyWith =>
      __$RegisterVerifyEmailStateCopyWithImpl<_RegisterVerifyEmailState>(
          this, _$identity);
}

abstract class _RegisterVerifyEmailState implements RegisterVerifyEmailState {
  const factory _RegisterVerifyEmailState(
      {required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required bool isError,
      required EmailAddress email,
      required bool isLoading,
      required AuthenticationFailure? authError}) = _$_RegisterVerifyEmailState;

  @override
  bool get isShowErrorMessage;
  @override
  bool get isNavigateNextPage;
  @override
  bool get isError;
  @override
  EmailAddress get email;
  @override
  bool get isLoading;
  @override
  AuthenticationFailure? get authError;
  @override
  @JsonKey(ignore: true)
  _$RegisterVerifyEmailStateCopyWith<_RegisterVerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
