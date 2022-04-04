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

  OtpChanged otpChanged(String otp) {
    return OtpChanged(
      otp,
    );
  }

  Save save() {
    return const Save();
  }

  SetNavigateNextPage setNavigateNextPage({required bool isNavigateNextPage}) {
    return SetNavigateNextPage(
      isNavigateNextPage: isNavigateNextPage,
    );
  }
}

/// @nodoc
const $RegisterEnterOtpEvent = _$RegisterEnterOtpEventTearOff();

/// @nodoc
mixin _$RegisterEnterOtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function() save,
    required TResult Function(bool isNavigateNextPage) setNavigateNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(Save value) save,
    required TResult Function(SetNavigateNextPage value) setNavigateNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
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
  $Res call({String otp});
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
  }) {
    return _then(OtpChanged(
      otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpChanged implements OtpChanged {
  const _$OtpChanged(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'RegisterEnterOtpEvent.otpChanged(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OtpChanged &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  $OtpChangedCopyWith<OtpChanged> get copyWith =>
      _$OtpChangedCopyWithImpl<OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function() save,
    required TResult Function(bool isNavigateNextPage) setNavigateNextPage,
  }) {
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
  }) {
    return otpChanged?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(Save value) save,
    required TResult Function(SetNavigateNextPage value) setNavigateNextPage,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class OtpChanged implements RegisterEnterOtpEvent {
  const factory OtpChanged(String otp) = _$OtpChanged;

  String get otp;
  @JsonKey(ignore: true)
  $OtpChangedCopyWith<OtpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCopyWithImpl<$Res> extends _$RegisterEnterOtpEventCopyWithImpl<$Res>
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
    return 'RegisterEnterOtpEvent.save()';
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
    required TResult Function(String otp) otpChanged,
    required TResult Function() save,
    required TResult Function(bool isNavigateNextPage) setNavigateNextPage,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
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
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(Save value) save,
    required TResult Function(SetNavigateNextPage value) setNavigateNextPage,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements RegisterEnterOtpEvent {
  const factory Save() = _$Save;
}

/// @nodoc
abstract class $SetNavigateNextPageCopyWith<$Res> {
  factory $SetNavigateNextPageCopyWith(
          SetNavigateNextPage value, $Res Function(SetNavigateNextPage) then) =
      _$SetNavigateNextPageCopyWithImpl<$Res>;
  $Res call({bool isNavigateNextPage});
}

/// @nodoc
class _$SetNavigateNextPageCopyWithImpl<$Res>
    extends _$RegisterEnterOtpEventCopyWithImpl<$Res>
    implements $SetNavigateNextPageCopyWith<$Res> {
  _$SetNavigateNextPageCopyWithImpl(
      SetNavigateNextPage _value, $Res Function(SetNavigateNextPage) _then)
      : super(_value, (v) => _then(v as SetNavigateNextPage));

  @override
  SetNavigateNextPage get _value => super._value as SetNavigateNextPage;

  @override
  $Res call({
    Object? isNavigateNextPage = freezed,
  }) {
    return _then(SetNavigateNextPage(
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetNavigateNextPage implements SetNavigateNextPage {
  const _$SetNavigateNextPage({required this.isNavigateNextPage});

  @override
  final bool isNavigateNextPage;

  @override
  String toString() {
    return 'RegisterEnterOtpEvent.setNavigateNextPage(isNavigateNextPage: $isNavigateNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetNavigateNextPage &&
            const DeepCollectionEquality()
                .equals(other.isNavigateNextPage, isNavigateNextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isNavigateNextPage));

  @JsonKey(ignore: true)
  @override
  $SetNavigateNextPageCopyWith<SetNavigateNextPage> get copyWith =>
      _$SetNavigateNextPageCopyWithImpl<SetNavigateNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function() save,
    required TResult Function(bool isNavigateNextPage) setNavigateNextPage,
  }) {
    return setNavigateNextPage(isNavigateNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
  }) {
    return setNavigateNextPage?.call(isNavigateNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
    required TResult orElse(),
  }) {
    if (setNavigateNextPage != null) {
      return setNavigateNextPage(isNavigateNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(Save value) save,
    required TResult Function(SetNavigateNextPage value) setNavigateNextPage,
  }) {
    return setNavigateNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
  }) {
    return setNavigateNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
    required TResult orElse(),
  }) {
    if (setNavigateNextPage != null) {
      return setNavigateNextPage(this);
    }
    return orElse();
  }
}

abstract class SetNavigateNextPage implements RegisterEnterOtpEvent {
  const factory SetNavigateNextPage({required bool isNavigateNextPage}) =
      _$SetNavigateNextPage;

  bool get isNavigateNextPage;
  @JsonKey(ignore: true)
  $SetNavigateNextPageCopyWith<SetNavigateNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterEnterOtpStateTearOff {
  const _$RegisterEnterOtpStateTearOff();

  _RegisterEnterOtpState call(
      {required TelNo telNo,
      required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required bool isLoading}) {
    return _RegisterEnterOtpState(
      telNo: telNo,
      isShowErrorMessage: isShowErrorMessage,
      isNavigateNextPage: isNavigateNextPage,
      isLoading: isLoading,
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
  bool get isLoading => throw _privateConstructorUsedError;

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
      bool isLoading});
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
    Object? isLoading = freezed,
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
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      bool isLoading});
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
    Object? isLoading = freezed,
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
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterEnterOtpState implements _RegisterEnterOtpState {
  const _$_RegisterEnterOtpState(
      {required this.telNo,
      required this.isShowErrorMessage,
      required this.isNavigateNextPage,
      required this.isLoading});

  @override
  final TelNo telNo;
  @override
  final bool isShowErrorMessage;
  @override
  final bool isNavigateNextPage;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'RegisterEnterOtpState(telNo: $telNo, isShowErrorMessage: $isShowErrorMessage, isNavigateNextPage: $isNavigateNextPage, isLoading: $isLoading)';
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
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(telNo),
      const DeepCollectionEquality().hash(isShowErrorMessage),
      const DeepCollectionEquality().hash(isNavigateNextPage),
      const DeepCollectionEquality().hash(isLoading));

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
      required bool isLoading}) = _$_RegisterEnterOtpState;

  @override
  TelNo get telNo;
  @override
  bool get isShowErrorMessage;
  @override
  bool get isNavigateNextPage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$RegisterEnterOtpStateCopyWith<_RegisterEnterOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
