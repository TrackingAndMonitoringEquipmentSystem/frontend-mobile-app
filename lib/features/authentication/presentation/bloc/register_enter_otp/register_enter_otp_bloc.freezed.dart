// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_enter_otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEnterOtpEventTearOff {
  const _$RegisterEnterOtpEventTearOff();

  OtpChanged otpChanged(String otp, dynamic controller) {
    return OtpChanged(
      otp,
      controller,
    );
  }

  SetState setState(RegisterEnterOtpState state) {
    return SetState(
      state,
    );
  }
}

/// @nodoc
const $RegisterEnterOtpEvent = _$RegisterEnterOtpEventTearOff();

/// @nodoc
mixin _$RegisterEnterOtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, dynamic controller) otpChanged,
    required TResult Function(RegisterEnterOtpState state) setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp, dynamic controller)? otpChanged,
    TResult Function(RegisterEnterOtpState state)? setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, dynamic controller)? otpChanged,
    TResult Function(RegisterEnterOtpState state)? setState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(SetState value) setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEnterOtpEventCopyWith<$Res> {
  factory $RegisterEnterOtpEventCopyWith(RegisterEnterOtpEvent value,
          $Res Function(RegisterEnterOtpEvent) then) =
      _$RegisterEnterOtpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEnterOtpEventCopyWithImpl<$Res>
    implements $RegisterEnterOtpEventCopyWith<$Res> {
  _$RegisterEnterOtpEventCopyWithImpl(this._value, this._then);

  final RegisterEnterOtpEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterOtpEvent) _then;
}

/// @nodoc
abstract class $OtpChangedCopyWith<$Res> {
  factory $OtpChangedCopyWith(
          OtpChanged value, $Res Function(OtpChanged) then) =
      _$OtpChangedCopyWithImpl<$Res>;
  $Res call({String otp, dynamic controller});
}

/// @nodoc
class _$OtpChangedCopyWithImpl<$Res>
    extends _$RegisterEnterOtpEventCopyWithImpl<$Res>
    implements $OtpChangedCopyWith<$Res> {
  _$OtpChangedCopyWithImpl(OtpChanged _value, $Res Function(OtpChanged) _then)
      : super(_value, (v) => _then(v as OtpChanged));

  @override
  OtpChanged get _value => super._value as OtpChanged;

  @override
  $Res call({
    Object? otp = freezed,
    Object? controller = freezed,
  }) {
    return _then(OtpChanged(
      otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$OtpChanged implements OtpChanged {
  const _$OtpChanged(this.otp, this.controller);

  @override
  final String otp;
  @override
  final dynamic controller;

  @override
  String toString() {
    return 'RegisterEnterOtpEvent.otpChanged(otp: $otp, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpChanged &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality()
                .equals(other.controller, controller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(controller));

  @JsonKey(ignore: true)
  @override
  $OtpChangedCopyWith<OtpChanged> get copyWith =>
      _$OtpChangedCopyWithImpl<OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp, dynamic controller) otpChanged,
    required TResult Function(RegisterEnterOtpState state) setState,
  }) {
    return otpChanged(otp, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp, dynamic controller)? otpChanged,
    TResult Function(RegisterEnterOtpState state)? setState,
  }) {
    return otpChanged?.call(otp, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, dynamic controller)? otpChanged,
    TResult Function(RegisterEnterOtpState state)? setState,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otp, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(SetState value) setState,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class OtpChanged implements RegisterEnterOtpEvent {
  const factory OtpChanged(String otp, dynamic controller) = _$OtpChanged;

  String get otp;
  dynamic get controller;
  @JsonKey(ignore: true)
  $OtpChangedCopyWith<OtpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetStateCopyWith<$Res> {
  factory $SetStateCopyWith(SetState value, $Res Function(SetState) then) =
      _$SetStateCopyWithImpl<$Res>;
  $Res call({RegisterEnterOtpState state});

  $RegisterEnterOtpStateCopyWith<$Res> get state;
}

/// @nodoc
class _$SetStateCopyWithImpl<$Res>
    extends _$RegisterEnterOtpEventCopyWithImpl<$Res>
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
              as RegisterEnterOtpState,
    ));
  }

  @override
  $RegisterEnterOtpStateCopyWith<$Res> get state {
    return $RegisterEnterOtpStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$SetState implements SetState {
  const _$SetState(this.state);

  @override
  final RegisterEnterOtpState state;

  @override
  String toString() {
    return 'RegisterEnterOtpEvent.setState(state: $state)';
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
    required TResult Function(String otp, dynamic controller) otpChanged,
    required TResult Function(RegisterEnterOtpState state) setState,
  }) {
    return setState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp, dynamic controller)? otpChanged,
    TResult Function(RegisterEnterOtpState state)? setState,
  }) {
    return setState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp, dynamic controller)? otpChanged,
    TResult Function(RegisterEnterOtpState state)? setState,
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
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(SetState value) setState,
  }) {
    return setState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
  }) {
    return setState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(SetState value)? setState,
    required TResult orElse(),
  }) {
    if (setState != null) {
      return setState(this);
    }
    return orElse();
  }
}

abstract class SetState implements RegisterEnterOtpEvent {
  const factory SetState(RegisterEnterOtpState state) = _$SetState;

  RegisterEnterOtpState get state;
  @JsonKey(ignore: true)
  $SetStateCopyWith<SetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterEnterOtpStateTearOff {
  const _$RegisterEnterOtpStateTearOff();

  _RegisterEnterOtpState call(
      {required TelNo telNo,
      required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required Otp otp,
      required bool isLoading,
      required bool isError,
      required TextEditingController controller}) {
    return _RegisterEnterOtpState(
      telNo: telNo,
      isShowErrorMessage: isShowErrorMessage,
      isNavigateNextPage: isNavigateNextPage,
      otp: otp,
      isLoading: isLoading,
      isError: isError,
      controller: controller,
    );
  }
}

/// @nodoc
const $RegisterEnterOtpState = _$RegisterEnterOtpStateTearOff();

/// @nodoc
mixin _$RegisterEnterOtpState {
  TelNo get telNo => throw _privateConstructorUsedError;
  bool get isShowErrorMessage => throw _privateConstructorUsedError;
  bool get isNavigateNextPage => throw _privateConstructorUsedError;
  Otp get otp => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  TextEditingController get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEnterOtpStateCopyWith<RegisterEnterOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEnterOtpStateCopyWith<$Res> {
  factory $RegisterEnterOtpStateCopyWith(RegisterEnterOtpState value,
          $Res Function(RegisterEnterOtpState) then) =
      _$RegisterEnterOtpStateCopyWithImpl<$Res>;
  $Res call(
      {TelNo telNo,
      bool isShowErrorMessage,
      bool isNavigateNextPage,
      Otp otp,
      bool isLoading,
      bool isError,
      TextEditingController controller});
}

/// @nodoc
class _$RegisterEnterOtpStateCopyWithImpl<$Res>
    implements $RegisterEnterOtpStateCopyWith<$Res> {
  _$RegisterEnterOtpStateCopyWithImpl(this._value, this._then);

  final RegisterEnterOtpState _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterOtpState) _then;

  @override
  $Res call({
    Object? telNo = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? otp = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      telNo: telNo == freezed
          ? _value.telNo
          : telNo // ignore: cast_nullable_to_non_nullable
              as TelNo,
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as Otp,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc
abstract class _$RegisterEnterOtpStateCopyWith<$Res>
    implements $RegisterEnterOtpStateCopyWith<$Res> {
  factory _$RegisterEnterOtpStateCopyWith(_RegisterEnterOtpState value,
          $Res Function(_RegisterEnterOtpState) then) =
      __$RegisterEnterOtpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TelNo telNo,
      bool isShowErrorMessage,
      bool isNavigateNextPage,
      Otp otp,
      bool isLoading,
      bool isError,
      TextEditingController controller});
}

/// @nodoc
class __$RegisterEnterOtpStateCopyWithImpl<$Res>
    extends _$RegisterEnterOtpStateCopyWithImpl<$Res>
    implements _$RegisterEnterOtpStateCopyWith<$Res> {
  __$RegisterEnterOtpStateCopyWithImpl(_RegisterEnterOtpState _value,
      $Res Function(_RegisterEnterOtpState) _then)
      : super(_value, (v) => _then(v as _RegisterEnterOtpState));

  @override
  _RegisterEnterOtpState get _value => super._value as _RegisterEnterOtpState;

  @override
  $Res call({
    Object? telNo = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? otp = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? controller = freezed,
  }) {
    return _then(_RegisterEnterOtpState(
      telNo: telNo == freezed
          ? _value.telNo
          : telNo // ignore: cast_nullable_to_non_nullable
              as TelNo,
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as Otp,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_RegisterEnterOtpState implements _RegisterEnterOtpState {
  const _$_RegisterEnterOtpState(
      {required this.telNo,
      required this.isShowErrorMessage,
      required this.isNavigateNextPage,
      required this.otp,
      required this.isLoading,
      required this.isError,
      required this.controller});

  @override
  final TelNo telNo;
  @override
  final bool isShowErrorMessage;
  @override
  final bool isNavigateNextPage;
  @override
  final Otp otp;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final TextEditingController controller;

  @override
  String toString() {
    return 'RegisterEnterOtpState(telNo: $telNo, isShowErrorMessage: $isShowErrorMessage, isNavigateNextPage: $isNavigateNextPage, otp: $otp, isLoading: $isLoading, isError: $isError, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterEnterOtpState &&
            const DeepCollectionEquality().equals(other.telNo, telNo) &&
            const DeepCollectionEquality()
                .equals(other.isShowErrorMessage, isShowErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.isNavigateNextPage, isNavigateNextPage) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.controller, controller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(telNo),
      const DeepCollectionEquality().hash(isShowErrorMessage),
      const DeepCollectionEquality().hash(isNavigateNextPage),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(controller));

  @JsonKey(ignore: true)
  @override
  _$RegisterEnterOtpStateCopyWith<_RegisterEnterOtpState> get copyWith =>
      __$RegisterEnterOtpStateCopyWithImpl<_RegisterEnterOtpState>(
          this, _$identity);
}

abstract class _RegisterEnterOtpState implements RegisterEnterOtpState {
  const factory _RegisterEnterOtpState(
      {required TelNo telNo,
      required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required Otp otp,
      required bool isLoading,
      required bool isError,
      required TextEditingController controller}) = _$_RegisterEnterOtpState;

  @override
  TelNo get telNo;
  @override
  bool get isShowErrorMessage;
  @override
  bool get isNavigateNextPage;
  @override
  Otp get otp;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  TextEditingController get controller;
  @override
  @JsonKey(ignore: true)
  _$RegisterEnterOtpStateCopyWith<_RegisterEnterOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
