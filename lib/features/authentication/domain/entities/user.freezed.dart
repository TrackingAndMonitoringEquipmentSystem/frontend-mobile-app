// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserType _$UserTypeFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTypeTearOff {
  const _$UserTypeTearOff();

  _User call(
      {required int id,
      required String? uid,
      required FirstName firstName,
      required LastName lastName,
      required EmailAddress email,
      required TelNo telNo,
      required String? providerId,
      required Gender gender,
      required String faceIdUrl,
      required String profilePicUrl,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _User(
      id: id,
      uid: uid,
      firstName: firstName,
      lastName: lastName,
      email: email,
      telNo: telNo,
      providerId: providerId,
      gender: gender,
      faceIdUrl: faceIdUrl,
      profilePicUrl: profilePicUrl,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  UserType fromJson(Map<String, Object?> json) {
    return UserType.fromJson(json);
  }
}

/// @nodoc
const $UserType = _$UserTypeTearOff();

/// @nodoc
mixin _$UserType {
  int get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  TelNo get telNo => throw _privateConstructorUsedError;
  String? get providerId => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get faceIdUrl => throw _privateConstructorUsedError;
  String get profilePicUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTypeCopyWith<UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeCopyWith<$Res> {
  factory $UserTypeCopyWith(UserType value, $Res Function(UserType) then) =
      _$UserTypeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? uid,
      FirstName firstName,
      LastName lastName,
      EmailAddress email,
      TelNo telNo,
      String? providerId,
      Gender gender,
      String faceIdUrl,
      String profilePicUrl,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$UserTypeCopyWithImpl<$Res> implements $UserTypeCopyWith<$Res> {
  _$UserTypeCopyWithImpl(this._value, this._then);

  final UserType _value;
  // ignore: unused_field
  final $Res Function(UserType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? telNo = freezed,
    Object? providerId = freezed,
    Object? gender = freezed,
    Object? faceIdUrl = freezed,
    Object? profilePicUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      telNo: telNo == freezed
          ? _value.telNo
          : telNo // ignore: cast_nullable_to_non_nullable
              as TelNo,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      faceIdUrl: faceIdUrl == freezed
          ? _value.faceIdUrl
          : faceIdUrl // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicUrl: profilePicUrl == freezed
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserTypeCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? uid,
      FirstName firstName,
      LastName lastName,
      EmailAddress email,
      TelNo telNo,
      String? providerId,
      Gender gender,
      String faceIdUrl,
      String profilePicUrl,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserTypeCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? telNo = freezed,
    Object? providerId = freezed,
    Object? gender = freezed,
    Object? faceIdUrl = freezed,
    Object? profilePicUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      telNo: telNo == freezed
          ? _value.telNo
          : telNo // ignore: cast_nullable_to_non_nullable
              as TelNo,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      faceIdUrl: faceIdUrl == freezed
          ? _value.faceIdUrl
          : faceIdUrl // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicUrl: profilePicUrl == freezed
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.uid,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.telNo,
      required this.providerId,
      required this.gender,
      required this.faceIdUrl,
      required this.profilePicUrl,
      required this.createdAt,
      required this.updatedAt});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String? uid;
  @override
  final FirstName firstName;
  @override
  final LastName lastName;
  @override
  final EmailAddress email;
  @override
  final TelNo telNo;
  @override
  final String? providerId;
  @override
  final Gender gender;
  @override
  final String faceIdUrl;
  @override
  final String profilePicUrl;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserType(id: $id, uid: $uid, firstName: $firstName, lastName: $lastName, email: $email, telNo: $telNo, providerId: $providerId, gender: $gender, faceIdUrl: $faceIdUrl, profilePicUrl: $profilePicUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.telNo, telNo) &&
            const DeepCollectionEquality()
                .equals(other.providerId, providerId) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.faceIdUrl, faceIdUrl) &&
            const DeepCollectionEquality()
                .equals(other.profilePicUrl, profilePicUrl) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(telNo),
      const DeepCollectionEquality().hash(providerId),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(faceIdUrl),
      const DeepCollectionEquality().hash(profilePicUrl),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements UserType {
  const factory _User(
      {required int id,
      required String? uid,
      required FirstName firstName,
      required LastName lastName,
      required EmailAddress email,
      required TelNo telNo,
      required String? providerId,
      required Gender gender,
      required String faceIdUrl,
      required String profilePicUrl,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String? get uid;
  @override
  FirstName get firstName;
  @override
  LastName get lastName;
  @override
  EmailAddress get email;
  @override
  TelNo get telNo;
  @override
  String? get providerId;
  @override
  Gender get gender;
  @override
  String get faceIdUrl;
  @override
  String get profilePicUrl;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
