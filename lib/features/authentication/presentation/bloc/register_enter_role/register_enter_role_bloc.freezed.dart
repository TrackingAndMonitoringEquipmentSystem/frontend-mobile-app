// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_enter_role_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEnterRoleEventTearOff {
  const _$RegisterEnterRoleEventTearOff();

  SetState setState(RegisterEnterRoleState state) {
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
const $RegisterEnterRoleEvent = _$RegisterEnterRoleEventTearOff();

/// @nodoc
mixin _$RegisterEnterRoleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterEnterRoleState state) setState,
    required TResult Function() save,
    required TResult Function() initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterEnterRoleState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterEnterRoleState state)? setState,
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
abstract class $RegisterEnterRoleEventCopyWith<$Res> {
  factory $RegisterEnterRoleEventCopyWith(RegisterEnterRoleEvent value,
          $Res Function(RegisterEnterRoleEvent) then) =
      _$RegisterEnterRoleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEnterRoleEventCopyWithImpl<$Res>
    implements $RegisterEnterRoleEventCopyWith<$Res> {
  _$RegisterEnterRoleEventCopyWithImpl(this._value, this._then);

  final RegisterEnterRoleEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterRoleEvent) _then;
}

/// @nodoc
abstract class $SetStateCopyWith<$Res> {
  factory $SetStateCopyWith(SetState value, $Res Function(SetState) then) =
      _$SetStateCopyWithImpl<$Res>;
  $Res call({RegisterEnterRoleState state});

  $RegisterEnterRoleStateCopyWith<$Res> get state;
}

/// @nodoc
class _$SetStateCopyWithImpl<$Res>
    extends _$RegisterEnterRoleEventCopyWithImpl<$Res>
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
              as RegisterEnterRoleState,
    ));
  }

  @override
  $RegisterEnterRoleStateCopyWith<$Res> get state {
    return $RegisterEnterRoleStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$SetState implements SetState {
  const _$SetState(this.state);

  @override
  final RegisterEnterRoleState state;

  @override
  String toString() {
    return 'RegisterEnterRoleEvent.setState(state: $state)';
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
    required TResult Function(RegisterEnterRoleState state) setState,
    required TResult Function() save,
    required TResult Function() initState,
  }) {
    return setState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterEnterRoleState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
  }) {
    return setState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterEnterRoleState state)? setState,
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

abstract class SetState implements RegisterEnterRoleEvent {
  const factory SetState(RegisterEnterRoleState state) = _$SetState;

  RegisterEnterRoleState get state;
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
    extends _$RegisterEnterRoleEventCopyWithImpl<$Res>
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
    return 'RegisterEnterRoleEvent.save()';
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
    required TResult Function(RegisterEnterRoleState state) setState,
    required TResult Function() save,
    required TResult Function() initState,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterEnterRoleState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterEnterRoleState state)? setState,
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

abstract class Save implements RegisterEnterRoleEvent {
  const factory Save() = _$Save;
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res>
    extends _$RegisterEnterRoleEventCopyWithImpl<$Res>
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
    return 'RegisterEnterRoleEvent.initState()';
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
    required TResult Function(RegisterEnterRoleState state) setState,
    required TResult Function() save,
    required TResult Function() initState,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterEnterRoleState state)? setState,
    TResult Function()? save,
    TResult Function()? initState,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterEnterRoleState state)? setState,
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

abstract class InitState implements RegisterEnterRoleEvent {
  const factory InitState() = _$InitState;
}

/// @nodoc
class _$RegisterEnterRoleStateTearOff {
  const _$RegisterEnterRoleStateTearOff();

  _RegisterEnterRoleState call(
      {required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required Role role,
      required Department? department,
      required bool isLoading,
      required List<Department> departmentChoices,
      required bool isError}) {
    return _RegisterEnterRoleState(
      isShowErrorMessage: isShowErrorMessage,
      isNavigateNextPage: isNavigateNextPage,
      role: role,
      department: department,
      isLoading: isLoading,
      departmentChoices: departmentChoices,
      isError: isError,
    );
  }
}

/// @nodoc
const $RegisterEnterRoleState = _$RegisterEnterRoleStateTearOff();

/// @nodoc
mixin _$RegisterEnterRoleState {
  bool get isShowErrorMessage => throw _privateConstructorUsedError;
  bool get isNavigateNextPage => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  Department? get department => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Department> get departmentChoices => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEnterRoleStateCopyWith<RegisterEnterRoleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEnterRoleStateCopyWith<$Res> {
  factory $RegisterEnterRoleStateCopyWith(RegisterEnterRoleState value,
          $Res Function(RegisterEnterRoleState) then) =
      _$RegisterEnterRoleStateCopyWithImpl<$Res>;
  $Res call(
      {bool isShowErrorMessage,
      bool isNavigateNextPage,
      Role role,
      Department? department,
      bool isLoading,
      List<Department> departmentChoices,
      bool isError});

  $DepartmentCopyWith<$Res>? get department;
}

/// @nodoc
class _$RegisterEnterRoleStateCopyWithImpl<$Res>
    implements $RegisterEnterRoleStateCopyWith<$Res> {
  _$RegisterEnterRoleStateCopyWithImpl(this._value, this._then);

  final RegisterEnterRoleState _value;
  // ignore: unused_field
  final $Res Function(RegisterEnterRoleState) _then;

  @override
  $Res call({
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? role = freezed,
    Object? department = freezed,
    Object? isLoading = freezed,
    Object? departmentChoices = freezed,
    Object? isError = freezed,
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
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      departmentChoices: departmentChoices == freezed
          ? _value.departmentChoices
          : departmentChoices // ignore: cast_nullable_to_non_nullable
              as List<Department>,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $DepartmentCopyWith<$Res>? get department {
    if (_value.department == null) {
      return null;
    }

    return $DepartmentCopyWith<$Res>(_value.department!, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterEnterRoleStateCopyWith<$Res>
    implements $RegisterEnterRoleStateCopyWith<$Res> {
  factory _$RegisterEnterRoleStateCopyWith(_RegisterEnterRoleState value,
          $Res Function(_RegisterEnterRoleState) then) =
      __$RegisterEnterRoleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isShowErrorMessage,
      bool isNavigateNextPage,
      Role role,
      Department? department,
      bool isLoading,
      List<Department> departmentChoices,
      bool isError});

  @override
  $DepartmentCopyWith<$Res>? get department;
}

/// @nodoc
class __$RegisterEnterRoleStateCopyWithImpl<$Res>
    extends _$RegisterEnterRoleStateCopyWithImpl<$Res>
    implements _$RegisterEnterRoleStateCopyWith<$Res> {
  __$RegisterEnterRoleStateCopyWithImpl(_RegisterEnterRoleState _value,
      $Res Function(_RegisterEnterRoleState) _then)
      : super(_value, (v) => _then(v as _RegisterEnterRoleState));

  @override
  _RegisterEnterRoleState get _value => super._value as _RegisterEnterRoleState;

  @override
  $Res call({
    Object? isShowErrorMessage = freezed,
    Object? isNavigateNextPage = freezed,
    Object? role = freezed,
    Object? department = freezed,
    Object? isLoading = freezed,
    Object? departmentChoices = freezed,
    Object? isError = freezed,
  }) {
    return _then(_RegisterEnterRoleState(
      isShowErrorMessage: isShowErrorMessage == freezed
          ? _value.isShowErrorMessage
          : isShowErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isNavigateNextPage: isNavigateNextPage == freezed
          ? _value.isNavigateNextPage
          : isNavigateNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      departmentChoices: departmentChoices == freezed
          ? _value.departmentChoices
          : departmentChoices // ignore: cast_nullable_to_non_nullable
              as List<Department>,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterEnterRoleState implements _RegisterEnterRoleState {
  const _$_RegisterEnterRoleState(
      {required this.isShowErrorMessage,
      required this.isNavigateNextPage,
      required this.role,
      required this.department,
      required this.isLoading,
      required this.departmentChoices,
      required this.isError});

  @override
  final bool isShowErrorMessage;
  @override
  final bool isNavigateNextPage;
  @override
  final Role role;
  @override
  final Department? department;
  @override
  final bool isLoading;
  @override
  final List<Department> departmentChoices;
  @override
  final bool isError;

  @override
  String toString() {
    return 'RegisterEnterRoleState(isShowErrorMessage: $isShowErrorMessage, isNavigateNextPage: $isNavigateNextPage, role: $role, department: $department, isLoading: $isLoading, departmentChoices: $departmentChoices, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterEnterRoleState &&
            const DeepCollectionEquality()
                .equals(other.isShowErrorMessage, isShowErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.isNavigateNextPage, isNavigateNextPage) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other.department, department) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.departmentChoices, departmentChoices) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isShowErrorMessage),
      const DeepCollectionEquality().hash(isNavigateNextPage),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(department),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(departmentChoices),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$RegisterEnterRoleStateCopyWith<_RegisterEnterRoleState> get copyWith =>
      __$RegisterEnterRoleStateCopyWithImpl<_RegisterEnterRoleState>(
          this, _$identity);
}

abstract class _RegisterEnterRoleState implements RegisterEnterRoleState {
  const factory _RegisterEnterRoleState(
      {required bool isShowErrorMessage,
      required bool isNavigateNextPage,
      required Role role,
      required Department? department,
      required bool isLoading,
      required List<Department> departmentChoices,
      required bool isError}) = _$_RegisterEnterRoleState;

  @override
  bool get isShowErrorMessage;
  @override
  bool get isNavigateNextPage;
  @override
  Role get role;
  @override
  Department? get department;
  @override
  bool get isLoading;
  @override
  List<Department> get departmentChoices;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$RegisterEnterRoleStateCopyWith<_RegisterEnterRoleState> get copyWith =>
      throw _privateConstructorUsedError;
}
