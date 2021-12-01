// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }

  SigninWithEmailAndPasswordPressed signinWithEmailAndPasswordPressed() {
    return const SigninWithEmailAndPasswordPressed();
  }

  SigninWithWithGooglePressed signinWithGooglePressed() {
    return const SigninWithWithGooglePressed();
  }

  ToggleShowPasswordPressed toggleShowPasswordPressed() {
    return const ToggleShowPasswordPressed();
  }

  SignInWithFacebookPressed signInWithFacebookPressed() {
    return const SignInWithFacebookPressed();
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signinWithEmailAndPasswordPressed,
    required TResult Function() signinWithGooglePressed,
    required TResult Function() toggleShowPasswordPressed,
    required TResult Function() signInWithFacebookPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SigninWithEmailAndPasswordPressed value)
        signinWithEmailAndPasswordPressed,
    required TResult Function(SigninWithWithGooglePressed value)
        signinWithGooglePressed,
    required TResult Function(ToggleShowPasswordPressed value)
        toggleShowPasswordPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signinWithEmailAndPasswordPressed,
    required TResult Function() signinWithGooglePressed,
    required TResult Function() toggleShowPasswordPressed,
    required TResult Function() signInWithFacebookPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SigninWithEmailAndPasswordPressed value)
        signinWithEmailAndPasswordPressed,
    required TResult Function(SigninWithWithGooglePressed value)
        signinWithGooglePressed,
    required TResult Function(ToggleShowPasswordPressed value)
        toggleShowPasswordPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signinWithEmailAndPasswordPressed,
    required TResult Function() signinWithGooglePressed,
    required TResult Function() toggleShowPasswordPressed,
    required TResult Function() signInWithFacebookPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SigninWithEmailAndPasswordPressed value)
        signinWithEmailAndPasswordPressed,
    required TResult Function(SigninWithWithGooglePressed value)
        signinWithGooglePressed,
    required TResult Function(ToggleShowPasswordPressed value)
        toggleShowPasswordPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signinWithEmailAndPasswordPressed,
    required TResult Function() signinWithGooglePressed,
    required TResult Function() toggleShowPasswordPressed,
    required TResult Function() signInWithFacebookPressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SigninWithEmailAndPasswordPressed value)
        signinWithEmailAndPasswordPressed,
    required TResult Function(SigninWithWithGooglePressed value)
        signinWithGooglePressed,
    required TResult Function(ToggleShowPasswordPressed value)
        toggleShowPasswordPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $SigninWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SigninWithEmailAndPasswordPressedCopyWith(
          SigninWithEmailAndPasswordPressed value,
          $Res Function(SigninWithEmailAndPasswordPressed) then) =
      _$SigninWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigninWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SigninWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SigninWithEmailAndPasswordPressedCopyWithImpl(
      SigninWithEmailAndPasswordPressed _value,
      $Res Function(SigninWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SigninWithEmailAndPasswordPressed));

  @override
  SigninWithEmailAndPasswordPressed get _value =>
      super._value as SigninWithEmailAndPasswordPressed;
}

/// @nodoc

class _$SigninWithEmailAndPasswordPressed
    implements SigninWithEmailAndPasswordPressed {
  const _$SigninWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signinWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SigninWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signinWithEmailAndPasswordPressed,
    required TResult Function() signinWithGooglePressed,
    required TResult Function() toggleShowPasswordPressed,
    required TResult Function() signInWithFacebookPressed,
  }) {
    return signinWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
  }) {
    return signinWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (signinWithEmailAndPasswordPressed != null) {
      return signinWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SigninWithEmailAndPasswordPressed value)
        signinWithEmailAndPasswordPressed,
    required TResult Function(SigninWithWithGooglePressed value)
        signinWithGooglePressed,
    required TResult Function(ToggleShowPasswordPressed value)
        toggleShowPasswordPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
  }) {
    return signinWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
  }) {
    return signinWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (signinWithEmailAndPasswordPressed != null) {
      return signinWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SigninWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory SigninWithEmailAndPasswordPressed() =
      _$SigninWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $SigninWithWithGooglePressedCopyWith<$Res> {
  factory $SigninWithWithGooglePressedCopyWith(
          SigninWithWithGooglePressed value,
          $Res Function(SigninWithWithGooglePressed) then) =
      _$SigninWithWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigninWithWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SigninWithWithGooglePressedCopyWith<$Res> {
  _$SigninWithWithGooglePressedCopyWithImpl(SigninWithWithGooglePressed _value,
      $Res Function(SigninWithWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SigninWithWithGooglePressed));

  @override
  SigninWithWithGooglePressed get _value =>
      super._value as SigninWithWithGooglePressed;
}

/// @nodoc

class _$SigninWithWithGooglePressed implements SigninWithWithGooglePressed {
  const _$SigninWithWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signinWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SigninWithWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signinWithEmailAndPasswordPressed,
    required TResult Function() signinWithGooglePressed,
    required TResult Function() toggleShowPasswordPressed,
    required TResult Function() signInWithFacebookPressed,
  }) {
    return signinWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
  }) {
    return signinWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (signinWithGooglePressed != null) {
      return signinWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SigninWithEmailAndPasswordPressed value)
        signinWithEmailAndPasswordPressed,
    required TResult Function(SigninWithWithGooglePressed value)
        signinWithGooglePressed,
    required TResult Function(ToggleShowPasswordPressed value)
        toggleShowPasswordPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
  }) {
    return signinWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
  }) {
    return signinWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (signinWithGooglePressed != null) {
      return signinWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SigninWithWithGooglePressed implements SignInFormEvent {
  const factory SigninWithWithGooglePressed() = _$SigninWithWithGooglePressed;
}

/// @nodoc
abstract class $ToggleShowPasswordPressedCopyWith<$Res> {
  factory $ToggleShowPasswordPressedCopyWith(ToggleShowPasswordPressed value,
          $Res Function(ToggleShowPasswordPressed) then) =
      _$ToggleShowPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleShowPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $ToggleShowPasswordPressedCopyWith<$Res> {
  _$ToggleShowPasswordPressedCopyWithImpl(ToggleShowPasswordPressed _value,
      $Res Function(ToggleShowPasswordPressed) _then)
      : super(_value, (v) => _then(v as ToggleShowPasswordPressed));

  @override
  ToggleShowPasswordPressed get _value =>
      super._value as ToggleShowPasswordPressed;
}

/// @nodoc

class _$ToggleShowPasswordPressed implements ToggleShowPasswordPressed {
  const _$ToggleShowPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.toggleShowPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToggleShowPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signinWithEmailAndPasswordPressed,
    required TResult Function() signinWithGooglePressed,
    required TResult Function() toggleShowPasswordPressed,
    required TResult Function() signInWithFacebookPressed,
  }) {
    return toggleShowPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
  }) {
    return toggleShowPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (toggleShowPasswordPressed != null) {
      return toggleShowPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SigninWithEmailAndPasswordPressed value)
        signinWithEmailAndPasswordPressed,
    required TResult Function(SigninWithWithGooglePressed value)
        signinWithGooglePressed,
    required TResult Function(ToggleShowPasswordPressed value)
        toggleShowPasswordPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
  }) {
    return toggleShowPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
  }) {
    return toggleShowPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (toggleShowPasswordPressed != null) {
      return toggleShowPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class ToggleShowPasswordPressed implements SignInFormEvent {
  const factory ToggleShowPasswordPressed() = _$ToggleShowPasswordPressed;
}

/// @nodoc
abstract class $SignInWithFacebookPressedCopyWith<$Res> {
  factory $SignInWithFacebookPressedCopyWith(SignInWithFacebookPressed value,
          $Res Function(SignInWithFacebookPressed) then) =
      _$SignInWithFacebookPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithFacebookPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithFacebookPressedCopyWith<$Res> {
  _$SignInWithFacebookPressedCopyWithImpl(SignInWithFacebookPressed _value,
      $Res Function(SignInWithFacebookPressed) _then)
      : super(_value, (v) => _then(v as SignInWithFacebookPressed));

  @override
  SignInWithFacebookPressed get _value =>
      super._value as SignInWithFacebookPressed;
}

/// @nodoc

class _$SignInWithFacebookPressed implements SignInWithFacebookPressed {
  const _$SignInWithFacebookPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithFacebookPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithFacebookPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signinWithEmailAndPasswordPressed,
    required TResult Function() signinWithGooglePressed,
    required TResult Function() toggleShowPasswordPressed,
    required TResult Function() signInWithFacebookPressed,
  }) {
    return signInWithFacebookPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
  }) {
    return signInWithFacebookPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signinWithEmailAndPasswordPressed,
    TResult Function()? signinWithGooglePressed,
    TResult Function()? toggleShowPasswordPressed,
    TResult Function()? signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SigninWithEmailAndPasswordPressed value)
        signinWithEmailAndPasswordPressed,
    required TResult Function(SigninWithWithGooglePressed value)
        signinWithGooglePressed,
    required TResult Function(ToggleShowPasswordPressed value)
        toggleShowPasswordPressed,
    required TResult Function(SignInWithFacebookPressed value)
        signInWithFacebookPressed,
  }) {
    return signInWithFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
  }) {
    return signInWithFacebookPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SigninWithEmailAndPasswordPressed value)?
        signinWithEmailAndPasswordPressed,
    TResult Function(SigninWithWithGooglePressed value)?
        signinWithGooglePressed,
    TResult Function(ToggleShowPasswordPressed value)?
        toggleShowPasswordPressed,
    TResult Function(SignInWithFacebookPressed value)?
        signInWithFacebookPressed,
    required TResult orElse(),
  }) {
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithFacebookPressed implements SignInFormEvent {
  const factory SignInWithFacebookPressed() = _$SignInWithFacebookPressed;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {required EmailAddress emailAddress,
      required Password password,
      required bool isShowErrorMessage,
      required bool isSubmitting,
      required Either<AuthenticatonFailure, Unit>?
          authenticatonFailureOrSuccess,
      required bool isShowPassword}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      isShowErrorMessage: isShowErrorMessage,
      isSubmitting: isSubmitting,
      authenticatonFailureOrSuccess: authenticatonFailureOrSuccess,
      isShowPassword: isShowPassword,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isShowErrorMessage => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Either<AuthenticatonFailure, Unit>? get authenticatonFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isShowPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isShowErrorMessage,
      bool isSubmitting,
      Either<AuthenticatonFailure, Unit>? authenticatonFailureOrSuccess,
      bool isShowPassword});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isSubmitting = freezed,
    Object? authenticatonFailureOrSuccess = freezed,
    Object? isShowPassword = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticatonFailureOrSuccess: authenticatonFailureOrSuccess == freezed
          ? _value.authenticatonFailureOrSuccess
          : authenticatonFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthenticatonFailure, Unit>?,
      isShowPassword: isShowPassword == freezed
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isShowErrorMessage,
      bool isSubmitting,
      Either<AuthenticatonFailure, Unit>? authenticatonFailureOrSuccess,
      bool isShowPassword});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isSubmitting = freezed,
    Object? authenticatonFailureOrSuccess = freezed,
    Object? isShowPassword = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticatonFailureOrSuccess: authenticatonFailureOrSuccess == freezed
          ? _value.authenticatonFailureOrSuccess
          : authenticatonFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AuthenticatonFailure, Unit>?,
      isShowPassword: isShowPassword == freezed
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.isShowErrorMessage,
      required this.isSubmitting,
      required this.authenticatonFailureOrSuccess,
      required this.isShowPassword});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isShowErrorMessage;
  @override
  final bool isSubmitting;
  @override
  final Either<AuthenticatonFailure, Unit>? authenticatonFailureOrSuccess;
  @override
  final bool isShowPassword;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, isShowErrorMessage: $isShowErrorMessage, isSubmitting: $isSubmitting, authenticatonFailureOrSuccess: $authenticatonFailureOrSuccess, isShowPassword: $isShowPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isShowErrorMessage, isShowErrorMessage) ||
                other.isShowErrorMessage == isShowErrorMessage) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authenticatonFailureOrSuccess,
                    authenticatonFailureOrSuccess) ||
                other.authenticatonFailureOrSuccess ==
                    authenticatonFailureOrSuccess) &&
            (identical(other.isShowPassword, isShowPassword) ||
                other.isShowPassword == isShowPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      password,
      isShowErrorMessage,
      isSubmitting,
      authenticatonFailureOrSuccess,
      isShowPassword);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required EmailAddress emailAddress,
      required Password password,
      required bool isShowErrorMessage,
      required bool isSubmitting,
      required Either<AuthenticatonFailure, Unit>?
          authenticatonFailureOrSuccess,
      required bool isShowPassword}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isShowErrorMessage;
  @override
  bool get isSubmitting;
  @override
  Either<AuthenticatonFailure, Unit>? get authenticatonFailureOrSuccess;
  @override
  bool get isShowPassword;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
