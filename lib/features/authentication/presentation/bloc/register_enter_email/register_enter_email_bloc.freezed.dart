// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_enter_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEnterEmailEventTearOff {
  const _$RegisterEnterEmailEventTearOff();

  EmailChanged otpChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  SetState setState(RegisterEnterEmailState state) {
    return SetState(
      state,
    );
  }
}

/// @nodoc
const $RegisterEnterEmailEvent = _$RegisterEnterEmailEventTearOff();

/// @nodoc
mixin _$RegisterEnterEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) otpChanged,
    required TResult Function(RegisterEnterEmailState state) setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? otpChanged,
    TResult Function(RegisterEnterEmailState state)? setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? otpChanged,
    TResult Function(RegisterEnterEmailState state)? setState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) otpChanged,
    required TResult Function(SetState value) setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEnterEmailEventCopyWith<$Res> {
  factory $RegisterEnterEmailEventCopyWith(RegisterEnterEmailEvent value,
          $Res Function(RegisterEnterEmailEvent) then) =
      _$RegisterEnterEmailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEnterEmailEventCopyWithImpl<$Res>
    implements $RegisterEnterEmailEventCopyWith<$Res> {
  _$RegisterEnterEmailEventCopyWithImpl(this._value, this._then);

  final RegisterEnterEmailEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterEmailEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterEnterEmailEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEnterEmailEvent.otpChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) otpChanged,
    required TResult Function(RegisterEnterEmailState state) setState,
  }) {
    return otpChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? otpChanged,
    TResult Function(RegisterEnterEmailState state)? setState,
  }) {
    return otpChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? otpChanged,
    TResult Function(RegisterEnterEmailState state)? setState,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) otpChanged,
    required TResult Function(SetState value) setState,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterEnterEmailEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetStateCopyWith<$Res> {
  factory $SetStateCopyWith(SetState value, $Res Function(SetState) then) =
      _$SetStateCopyWithImpl<$Res>;
  $Res call({RegisterEnterEmailState state});

  $RegisterEnterEmailStateCopyWith<$Res> get state;
}

/// @nodoc
class _$SetStateCopyWithImpl<$Res>
    extends _$RegisterEnterEmailEventCopyWithImpl<$Res>
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
              as RegisterEnterEmailState,
    ));
  }

  @override
  $RegisterEnterEmailStateCopyWith<$Res> get state {
    return $RegisterEnterEmailStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$SetState implements SetState {
  const _$SetState(this.state);

  @override
  final RegisterEnterEmailState state;

  @override
  String toString() {
    return 'RegisterEnterEmailEvent.setState(state: $state)';
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
    required TResult Function(String email) otpChanged,
    required TResult Function(RegisterEnterEmailState state) setState,
  }) {
    return setState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? otpChanged,
    TResult Function(RegisterEnterEmailState state)? setState,
  }) {
    return setState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? otpChanged,
    TResult Function(RegisterEnterEmailState state)? setState,
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
    required TResult Function(EmailChanged value) otpChanged,
    required TResult Function(SetState value) setState,
  }) {
    return setState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
  }) {
    return setState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
    required TResult orElse(),
  }) {
    if (setState != null) {
      return setState(this);
    }
    return orElse();
  }
}

abstract class SetState implements RegisterEnterEmailEvent {
  const factory SetState(RegisterEnterEmailState state) = _$SetState;

  RegisterEnterEmailState get state;
  @JsonKey(ignore: true)
  $SetStateCopyWith<SetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterEnterEmailStateTearOff {
  const _$RegisterEnterEmailStateTearOff();

  _RegisterEnterEmailState call(
      {required EmailAddress email,
      required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required bool isLoading,
      required bool isError}) {
    return _RegisterEnterEmailState(
      email: email,
      isShowErrorMessage: isShowErrorMessage,
      isNavigateNextPage: isNavigateNextPage,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $RegisterEnterEmailState = _$RegisterEnterEmailStateTearOff();

/// @nodoc
mixin _$RegisterEnterEmailState {
  EmailAddress get email => throw _privateConstructorUsedError;
  bool get isShowErrorMessage => throw _privateConstructorUsedError;
  bool get isNavigateNextPage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEnterEmailStateCopyWith<RegisterEnterEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEnterEmailStateCopyWith<$Res> {
  factory $RegisterEnterEmailStateCopyWith(RegisterEnterEmailState value,
          $Res Function(RegisterEnterEmailState) then) =
      _$RegisterEnterEmailStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      bool isShowErrorMessage,
      bool isNavigateNextPage,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$RegisterEnterEmailStateCopyWithImpl<$Res>
    implements $RegisterEnterEmailStateCopyWith<$Res> {
  _$RegisterEnterEmailStateCopyWithImpl(this._value, this._then);

  final RegisterEnterEmailState _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterEmailState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RegisterEnterEmailStateCopyWith<$Res>
    implements $RegisterEnterEmailStateCopyWith<$Res> {
  factory _$RegisterEnterEmailStateCopyWith(_RegisterEnterEmailState value,
          $Res Function(_RegisterEnterEmailState) then) =
      __$RegisterEnterEmailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      bool isShowErrorMessage,
      bool isNavigateNextPage,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$RegisterEnterEmailStateCopyWithImpl<$Res>
    extends _$RegisterEnterEmailStateCopyWithImpl<$Res>
    implements _$RegisterEnterEmailStateCopyWith<$Res> {
  __$RegisterEnterEmailStateCopyWithImpl(_RegisterEnterEmailState _value,
      $Res Function(_RegisterEnterEmailState) _then)
      : super(_value, (v) => _then(v as _RegisterEnterEmailState));

  @override
  _RegisterEnterEmailState get _value =>
      super._value as _RegisterEnterEmailState;

  @override
  $Res call({
    Object? email = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_RegisterEnterEmailState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterEnterEmailState implements _RegisterEnterEmailState {
  const _$_RegisterEnterEmailState(
      {required this.email,
      required this.isShowErrorMessage,
      required this.isNavigateNextPage,
      required this.isLoading,
      required this.isError});

  @override
  final EmailAddress email;
  @override
  final bool isShowErrorMessage;
  @override
  final bool isNavigateNextPage;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'RegisterEnterEmailState(email: $email, isShowErrorMessage: $isShowErrorMessage, isNavigateNextPage: $isNavigateNextPage, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterEnterEmailState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.isShowErrorMessage, isShowErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.isNavigateNextPage, isNavigateNextPage) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(isShowErrorMessage),
      const DeepCollectionEquality().hash(isNavigateNextPage),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$RegisterEnterEmailStateCopyWith<_RegisterEnterEmailState> get copyWith =>
      __$RegisterEnterEmailStateCopyWithImpl<_RegisterEnterEmailState>(
          this, _$identity);
}

abstract class _RegisterEnterEmailState implements RegisterEnterEmailState {
  const factory _RegisterEnterEmailState(
      {required EmailAddress email,
      required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required bool isLoading,
      required bool isError}) = _$_RegisterEnterEmailState;

  @override
  EmailAddress get email;
  @override
  bool get isShowErrorMessage;
  @override
  bool get isNavigateNextPage;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$RegisterEnterEmailStateCopyWith<_RegisterEnterEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
