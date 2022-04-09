// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'department.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
class _$DepartmentTearOff {
  const _$DepartmentTearOff();

  _Department call(
      {required int id,
      @JsonKey(name: 'dept_name') required String name,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      @JsonKey(name: 'created_by') required UserType createdBy,
      @JsonKey(name: 'updated_by') required UserType updatedBy}) {
    return _Department(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      createdBy: createdBy,
      updatedBy: updatedBy,
    );
  }

  Department fromJson(Map<String, Object?> json) {
    return Department.fromJson(json);
  }
}

/// @nodoc
const $Department = _$DepartmentTearOff();

/// @nodoc
mixin _$Department {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'dept_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  UserType get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_by')
  UserType get updatedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'dept_name') String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'created_by') UserType createdBy,
      @JsonKey(name: 'updated_by') UserType updatedBy});

  $UserTypeCopyWith<$Res> get createdBy;
  $UserTypeCopyWith<$Res> get updatedBy;
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res> implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  final Department _value;
  // ignore: unused_field
  final $Res Function(Department) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserType,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }

  @override
  $UserTypeCopyWith<$Res> get createdBy {
    return $UserTypeCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value));
    });
  }

  @override
  $UserTypeCopyWith<$Res> get updatedBy {
    return $UserTypeCopyWith<$Res>(_value.updatedBy, (value) {
      return _then(_value.copyWith(updatedBy: value));
    });
  }
}

/// @nodoc
abstract class _$DepartmentCopyWith<$Res> implements $DepartmentCopyWith<$Res> {
  factory _$DepartmentCopyWith(
          _Department value, $Res Function(_Department) then) =
      __$DepartmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'dept_name') String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'created_by') UserType createdBy,
      @JsonKey(name: 'updated_by') UserType updatedBy});

  @override
  $UserTypeCopyWith<$Res> get createdBy;
  @override
  $UserTypeCopyWith<$Res> get updatedBy;
}

/// @nodoc
class __$DepartmentCopyWithImpl<$Res> extends _$DepartmentCopyWithImpl<$Res>
    implements _$DepartmentCopyWith<$Res> {
  __$DepartmentCopyWithImpl(
      _Department _value, $Res Function(_Department) _then)
      : super(_value, (v) => _then(v as _Department));

  @override
  _Department get _value => super._value as _Department;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
  }) {
    return _then(_Department(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserType,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Department implements _Department {
  const _$_Department(
      {required this.id,
      @JsonKey(name: 'dept_name') required this.name,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'updated_by') required this.updatedBy});

  factory _$_Department.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'dept_name')
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'created_by')
  final UserType createdBy;
  @override
  @JsonKey(name: 'updated_by')
  final UserType updatedBy;

  @override
  String toString() {
    return 'Department(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Department &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(updatedBy));

  @JsonKey(ignore: true)
  @override
  _$DepartmentCopyWith<_Department> get copyWith =>
      __$DepartmentCopyWithImpl<_Department>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentToJson(this);
  }
}

abstract class _Department implements Department {
  const factory _Department(
          {required int id,
          @JsonKey(name: 'dept_name') required String name,
          @JsonKey(name: 'created_at') required DateTime createdAt,
          @JsonKey(name: 'updated_at') required DateTime updatedAt,
          @JsonKey(name: 'created_by') required UserType createdBy,
          @JsonKey(name: 'updated_by') required UserType updatedBy}) =
      _$_Department;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$_Department.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'dept_name')
  String get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'created_by')
  UserType get createdBy;
  @override
  @JsonKey(name: 'updated_by')
  UserType get updatedBy;
  @override
  @JsonKey(ignore: true)
  _$DepartmentCopyWith<_Department> get copyWith =>
      throw _privateConstructorUsedError;
}
