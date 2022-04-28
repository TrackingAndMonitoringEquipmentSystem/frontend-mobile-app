// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_enter_phone_number_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEnterPhoneNumberEventTearOff {
  const _$RegisterEnterPhoneNumberEventTearOff();

  PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
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
const $RegisterEnterPhoneNumberEvent = _$RegisterEnterPhoneNumberEventTearOff();

/// @nodoc
mixin _$RegisterEnterPhoneNumberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() save,
    required TResult Function(bool isNavigateNextPage) setNavigateNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(Save value) save,
    required TResult Function(SetNavigateNextPage value) setNavigateNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEnterPhoneNumberEventCopyWith<$Res> {
  factory $RegisterEnterPhoneNumberEventCopyWith(
          RegisterEnterPhoneNumberEvent value,
          $Res Function(RegisterEnterPhoneNumberEvent) then) =
      _$RegisterEnterPhoneNumberEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEnterPhoneNumberEventCopyWithImpl<$Res>
    implements $RegisterEnterPhoneNumberEventCopyWith<$Res> {
  _$RegisterEnterPhoneNumberEventCopyWithImpl(this._value, this._then);

  final RegisterEnterPhoneNumberEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterPhoneNumberEvent) _then;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$RegisterEnterPhoneNumberEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterEnterPhoneNumberEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() save,
    required TResult Function(bool isNavigateNextPage) setNavigateNextPage,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(Save value) save,
    required TResult Function(SetNavigateNextPage value) setNavigateNextPage,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements RegisterEnterPhoneNumberEvent {
  const factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCopyWithImpl<$Res>
    extends _$RegisterEnterPhoneNumberEventCopyWithImpl<$Res>
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
    return 'RegisterEnterPhoneNumberEvent.save()';
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
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() save,
    required TResult Function(bool isNavigateNextPage) setNavigateNextPage,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
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
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(Save value) save,
    required TResult Function(SetNavigateNextPage value) setNavigateNextPage,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
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

abstract class Save implements RegisterEnterPhoneNumberEvent {
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
    extends _$RegisterEnterPhoneNumberEventCopyWithImpl<$Res>
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
    return 'RegisterEnterPhoneNumberEvent.setNavigateNextPage(isNavigateNextPage: $isNavigateNextPage)';
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
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() save,
    required TResult Function(bool isNavigateNextPage) setNavigateNextPage,
  }) {
    return setNavigateNextPage(isNavigateNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? save,
    TResult Function(bool isNavigateNextPage)? setNavigateNextPage,
  }) {
    return setNavigateNextPage?.call(isNavigateNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
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
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(Save value) save,
    required TResult Function(SetNavigateNextPage value) setNavigateNextPage,
  }) {
    return setNavigateNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(Save value)? save,
    TResult Function(SetNavigateNextPage value)? setNavigateNextPage,
  }) {
    return setNavigateNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
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

abstract class SetNavigateNextPage implements RegisterEnterPhoneNumberEvent {
  const factory SetNavigateNextPage({required bool isNavigateNextPage}) =
      _$SetNavigateNextPage;

  bool get isNavigateNextPage;
  @JsonKey(ignore: true)
  $SetNavigateNextPageCopyWith<SetNavigateNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterEnterPhoneNumberStateTearOff {
  const _$RegisterEnterPhoneNumberStateTearOff();

  _RegisterEnterPhoneNumberState call(
      {required TelNo telNo,
      required bool isShowErrorMessage,
      required bool isNavigateNextPage}) {
    return _RegisterEnterPhoneNumberState(
      telNo: telNo,
      isShowErrorMessage: isShowErrorMessage,
      isNavigateNextPage: isNavigateNextPage,
    );
  }
}

/// @nodoc
const $RegisterEnterPhoneNumberState = _$RegisterEnterPhoneNumberStateTearOff();

/// @nodoc
mixin _$RegisterEnterPhoneNumberState {
  TelNo get telNo => throw _privateConstructorUsedError;
  bool get isShowErrorMessage => throw _privateConstructorUsedError;
  bool get isNavigateNextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEnterPhoneNumberStateCopyWith<RegisterEnterPhoneNumberState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEnterPhoneNumberStateCopyWith<$Res> {
  factory $RegisterEnterPhoneNumberStateCopyWith(
          RegisterEnterPhoneNumberState value,
          $Res Function(RegisterEnterPhoneNumberState) then) =
      _$RegisterEnterPhoneNumberStateCopyWithImpl<$Res>;
  $Res call({TelNo telNo, bool isShowErrorMessage, bool isNavigateNextPage});
}

/// @nodoc
class _$RegisterEnterPhoneNumberStateCopyWithImpl<$Res>
    implements $RegisterEnterPhoneNumberStateCopyWith<$Res> {
  _$RegisterEnterPhoneNumberStateCopyWithImpl(this._value, this._then);

  final RegisterEnterPhoneNumberState _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterPhoneNumberState) _then;

  @override
  $Res call({
    Object? telNo = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$RegisterEnterPhoneNumberStateCopyWith<$Res>
    implements $RegisterEnterPhoneNumberStateCopyWith<$Res> {
  factory _$RegisterEnterPhoneNumberStateCopyWith(
          _RegisterEnterPhoneNumberState value,
          $Res Function(_RegisterEnterPhoneNumberState) then) =
      __$RegisterEnterPhoneNumberStateCopyWithImpl<$Res>;
  @override
  $Res call({TelNo telNo, bool isShowErrorMessage, bool isNavigateNextPage});
}

/// @nodoc
class __$RegisterEnterPhoneNumberStateCopyWithImpl<$Res>
    extends _$RegisterEnterPhoneNumberStateCopyWithImpl<$Res>
    implements _$RegisterEnterPhoneNumberStateCopyWith<$Res> {
  __$RegisterEnterPhoneNumberStateCopyWithImpl(
      _RegisterEnterPhoneNumberState _value,
      $Res Function(_RegisterEnterPhoneNumberState) _then)
      : super(_value, (v) => _then(v as _RegisterEnterPhoneNumberState));

  @override
  _RegisterEnterPhoneNumberState get _value =>
      super._value as _RegisterEnterPhoneNumberState;

  @override
  $Res call({
    Object? telNo = freezed,
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
  }) {
    return _then(_RegisterEnterPhoneNumberState(
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
    ));
  }
}

/// @nodoc

class _$_RegisterEnterPhoneNumberState
    implements _RegisterEnterPhoneNumberState {
  const _$_RegisterEnterPhoneNumberState(
      {required this.telNo,
      required this.isShowErrorMessage,
      required this.isNavigateNextPage});

  @override
  final TelNo telNo;
  @override
  final bool isShowErrorMessage;
  @override
  final bool isNavigateNextPage;

  @override
  String toString() {
    return 'RegisterEnterPhoneNumberState(telNo: $telNo, isShowErrorMessage: $isShowErrorMessage, isNavigateNextPage: $isNavigateNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterEnterPhoneNumberState &&
            const DeepCollectionEquality().equals(other.telNo, telNo) &&
            const DeepCollectionEquality()
                .equals(other.isShowErrorMessage, isShowErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.isNavigateNextPage, isNavigateNextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(telNo),
      const DeepCollectionEquality().hash(isShowErrorMessage),
      const DeepCollectionEquality().hash(isNavigateNextPage));

  @JsonKey(ignore: true)
  @override
  _$RegisterEnterPhoneNumberStateCopyWith<_RegisterEnterPhoneNumberState>
      get copyWith => __$RegisterEnterPhoneNumberStateCopyWithImpl<
          _RegisterEnterPhoneNumberState>(this, _$identity);
}

abstract class _RegisterEnterPhoneNumberState
    implements RegisterEnterPhoneNumberState {
  const factory _RegisterEnterPhoneNumberState(
      {required TelNo telNo,
      required bool isShowErrorMessage,
      required bool isNavigateNextPage}) = _$_RegisterEnterPhoneNumberState;

  @override
  TelNo get telNo;
  @override
  bool get isShowErrorMessage;
  @override
  bool get isNavigateNextPage;
  @override
  @JsonKey(ignore: true)
  _$RegisterEnterPhoneNumberStateCopyWith<_RegisterEnterPhoneNumberState>
      get copyWith => throw _privateConstructorUsedError;
}
