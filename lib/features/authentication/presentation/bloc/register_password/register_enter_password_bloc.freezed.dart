// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_enter_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEnterPasswordEventTearOff {
  const _$RegisterEnterPasswordEventTearOff();

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  ConfirmPasswordChanged confirmPasswordChanged(String confirmPassword) {
    return ConfirmPasswordChanged(
      confirmPassword,
    );
  }

  SetState setState(RegisterEnterPasswordState state) {
    return SetState(
      state,
    );
  }

  Save save() {
    return const Save();
  }
}

/// @nodoc
const $RegisterEnterPasswordEvent = _$RegisterEnterPasswordEventTearOff();

/// @nodoc
mixin _$RegisterEnterPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(RegisterEnterPasswordState state) setState,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SetState value) setState,
    required TResult Function(Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEnterPasswordEventCopyWith<$Res> {
  factory $RegisterEnterPasswordEventCopyWith(RegisterEnterPasswordEvent value,
          $Res Function(RegisterEnterPasswordEvent) then) =
      _$RegisterEnterPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEnterPasswordEventCopyWithImpl<$Res>
    implements $RegisterEnterPasswordEventCopyWith<$Res> {
  _$RegisterEnterPasswordEventCopyWithImpl(this._value, this._then);

  final RegisterEnterPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterPasswordEvent) _then;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEnterPasswordEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEnterPasswordEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(RegisterEnterPasswordState state) setState,
    required TResult Function() save,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SetState value) setState,
    required TResult Function(Save value) save,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterEnterPasswordEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPasswordChangedCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value,
          $Res Function(ConfirmPasswordChanged) then) =
      _$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String confirmPassword});
}

/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEnterPasswordEventCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(ConfirmPasswordChanged _value,
      $Res Function(ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordChanged));

  @override
  ConfirmPasswordChanged get _value => super._value as ConfirmPasswordChanged;

  @override
  $Res call({
    Object? confirmPassword = freezed,
  }) {
    return _then(ConfirmPasswordChanged(
      confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RegisterEnterPasswordEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConfirmPasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(RegisterEnterPasswordState state) setState,
    required TResult Function() save,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SetState value) setState,
    required TResult Function(Save value) save,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements RegisterEnterPasswordEvent {
  const factory ConfirmPasswordChanged(String confirmPassword) =
      _$ConfirmPasswordChanged;

  String get confirmPassword;
  @JsonKey(ignore: true)
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetStateCopyWith<$Res> {
  factory $SetStateCopyWith(SetState value, $Res Function(SetState) then) =
      _$SetStateCopyWithImpl<$Res>;
  $Res call({RegisterEnterPasswordState state});

  $RegisterEnterPasswordStateCopyWith<$Res> get state;
}

/// @nodoc
class _$SetStateCopyWithImpl<$Res>
    extends _$RegisterEnterPasswordEventCopyWithImpl<$Res>
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
              as RegisterEnterPasswordState,
    ));
  }

  @override
  $RegisterEnterPasswordStateCopyWith<$Res> get state {
    return $RegisterEnterPasswordStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$SetState implements SetState {
  const _$SetState(this.state);

  @override
  final RegisterEnterPasswordState state;

  @override
  String toString() {
    return 'RegisterEnterPasswordEvent.setState(state: $state)';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(RegisterEnterPasswordState state) setState,
    required TResult Function() save,
  }) {
    return setState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
  }) {
    return setState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
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
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SetState value) setState,
    required TResult Function(Save value) save,
  }) {
    return setState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
  }) {
    return setState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (setState != null) {
      return setState(this);
    }
    return orElse();
  }
}

abstract class SetState implements RegisterEnterPasswordEvent {
  const factory SetState(RegisterEnterPasswordState state) = _$SetState;

  RegisterEnterPasswordState get state;
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
    extends _$RegisterEnterPasswordEventCopyWithImpl<$Res>
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
    return 'RegisterEnterPasswordEvent.save()';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(RegisterEnterPasswordState state) setState,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(RegisterEnterPasswordState state)? setState,
    TResult Function()? save,
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
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(SetState value) setState,
    required TResult Function(Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(SetState value)? setState,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements RegisterEnterPasswordEvent {
  const factory Save() = _$Save;
}

/// @nodoc
class _$RegisterEnterPasswordStateTearOff {
  const _$RegisterEnterPasswordStateTearOff();

  _RegisterEnterPasswordState call(
      {required Password password,
      required Password confirmPassword,
      required bool isShowPassword,
      required bool isShowConfirmPassword,
      required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required bool isErrorPasswordNotSame}) {
    return _RegisterEnterPasswordState(
      password: password,
      confirmPassword: confirmPassword,
      isShowPassword: isShowPassword,
      isShowConfirmPassword: isShowConfirmPassword,
      isShowErrorMessage: isShowErrorMessage,
      isNavigateNextPage: isNavigateNextPage,
      isErrorPasswordNotSame: isErrorPasswordNotSame,
    );
  }
}

/// @nodoc
const $RegisterEnterPasswordState = _$RegisterEnterPasswordStateTearOff();

/// @nodoc
mixin _$RegisterEnterPasswordState {
  Password get password => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  bool get isShowPassword => throw _privateConstructorUsedError;
  bool get isShowConfirmPassword => throw _privateConstructorUsedError;
  bool get isShowErrorMessage => throw _privateConstructorUsedError;
  bool get isNavigateNextPage => throw _privateConstructorUsedError;
  bool get isErrorPasswordNotSame => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEnterPasswordStateCopyWith<RegisterEnterPasswordState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEnterPasswordStateCopyWith<$Res> {
  factory $RegisterEnterPasswordStateCopyWith(RegisterEnterPasswordState value,
          $Res Function(RegisterEnterPasswordState) then) =
      _$RegisterEnterPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      Password confirmPassword,
      bool isShowPassword,
      bool isShowConfirmPassword,
      bool isShowErrorMessage,
      bool isNavigateNextPage,
      bool isErrorPasswordNotSame});
}

/// @nodoc
class _$RegisterEnterPasswordStateCopyWithImpl<$Res>
    implements $RegisterEnterPasswordStateCopyWith<$Res> {
  _$RegisterEnterPasswordStateCopyWithImpl(this._value, this._then);

  final RegisterEnterPasswordState _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterPasswordState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? isShowPassword = freezed,
    Object? isShowConfirmPassword = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? isErrorPasswordNotSame = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      isShowPassword: isShowPassword == freezed
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowConfirmPassword: isShowConfirmPassword == freezed
          ? _value.isShowConfirmPassword
          : isShowConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorPasswordNotSame: isErrorPasswordNotSame == freezed
          ? _value.isErrorPasswordNotSame
          : isErrorPasswordNotSame // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RegisterEnterPasswordStateCopyWith<$Res>
    implements $RegisterEnterPasswordStateCopyWith<$Res> {
  factory _$RegisterEnterPasswordStateCopyWith(
          _RegisterEnterPasswordState value,
          $Res Function(_RegisterEnterPasswordState) then) =
      __$RegisterEnterPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password password,
      Password confirmPassword,
      bool isShowPassword,
      bool isShowConfirmPassword,
      bool isShowErrorMessage,
      bool isNavigateNextPage,
      bool isErrorPasswordNotSame});
}

/// @nodoc
class __$RegisterEnterPasswordStateCopyWithImpl<$Res>
    extends _$RegisterEnterPasswordStateCopyWithImpl<$Res>
    implements _$RegisterEnterPasswordStateCopyWith<$Res> {
  __$RegisterEnterPasswordStateCopyWithImpl(_RegisterEnterPasswordState _value,
      $Res Function(_RegisterEnterPasswordState) _then)
      : super(_value, (v) => _then(v as _RegisterEnterPasswordState));

  @override
  _RegisterEnterPasswordState get _value =>
      super._value as _RegisterEnterPasswordState;

  @override
  $Res call({
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? isShowPassword = freezed,
    Object? isShowConfirmPassword = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? isErrorPasswordNotSame = freezed,
  }) {
    return _then(_RegisterEnterPasswordState(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      isShowPassword: isShowPassword == freezed
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowConfirmPassword: isShowConfirmPassword == freezed
          ? _value.isShowConfirmPassword
          : isShowConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorPasswordNotSame: isErrorPasswordNotSame == freezed
          ? _value.isErrorPasswordNotSame
          : isErrorPasswordNotSame // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterEnterPasswordState implements _RegisterEnterPasswordState {
  const _$_RegisterEnterPasswordState(
      {required this.password,
      required this.confirmPassword,
      required this.isShowPassword,
      required this.isShowConfirmPassword,
      required this.isShowErrorMessage,
      required this.isNavigateNextPage,
      required this.isErrorPasswordNotSame});

  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final bool isShowPassword;
  @override
  final bool isShowConfirmPassword;
  @override
  final bool isShowErrorMessage;
  @override
  final bool isNavigateNextPage;
  @override
  final bool isErrorPasswordNotSame;

  @override
  String toString() {
    return 'RegisterEnterPasswordState(password: $password, confirmPassword: $confirmPassword, isShowPassword: $isShowPassword, isShowConfirmPassword: $isShowConfirmPassword, isShowErrorMessage: $isShowErrorMessage, isNavigateNextPage: $isNavigateNextPage, isErrorPasswordNotSame: $isErrorPasswordNotSame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterEnterPasswordState &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality()
                .equals(other.isShowPassword, isShowPassword) &&
            const DeepCollectionEquality()
                .equals(other.isShowConfirmPassword, isShowConfirmPassword) &&
            const DeepCollectionEquality()
                .equals(other.isShowErrorMessage, isShowErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.isNavigateNextPage, isNavigateNextPage) &&
            const DeepCollectionEquality()
                .equals(other.isErrorPasswordNotSame, isErrorPasswordNotSame));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(isShowPassword),
      const DeepCollectionEquality().hash(isShowConfirmPassword),
      const DeepCollectionEquality().hash(isShowErrorMessage),
      const DeepCollectionEquality().hash(isNavigateNextPage),
      const DeepCollectionEquality().hash(isErrorPasswordNotSame));

  @JsonKey(ignore: true)
  @override
  _$RegisterEnterPasswordStateCopyWith<_RegisterEnterPasswordState>
      get copyWith => __$RegisterEnterPasswordStateCopyWithImpl<
          _RegisterEnterPasswordState>(this, _$identity);
}

abstract class _RegisterEnterPasswordState
    implements RegisterEnterPasswordState {
  const factory _RegisterEnterPasswordState(
      {required Password password,
      required Password confirmPassword,
      required bool isShowPassword,
      required bool isShowConfirmPassword,
      required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required bool isErrorPasswordNotSame}) = _$_RegisterEnterPasswordState;

  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  bool get isShowPassword;
  @override
  bool get isShowConfirmPassword;
  @override
  bool get isShowErrorMessage;
  @override
  bool get isNavigateNextPage;
  @override
  bool get isErrorPasswordNotSame;
  @override
  @JsonKey(ignore: true)
  _$RegisterEnterPasswordStateCopyWith<_RegisterEnterPasswordState>
      get copyWith => throw _privateConstructorUsedError;
}
