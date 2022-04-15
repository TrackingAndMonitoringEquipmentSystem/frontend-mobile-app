import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';

part 'user.freezed.dart';

@freezed
class UserType with _$UserType {
  const factory UserType({
    required int id,
    required String uid,
    required String firstName,
    required String lastName,
    required String email,
    required String tel,
    required String providerId,
    required Gender? gender,
    required String? faceIdUrl,
    required String? profilePicUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Department department,
  }) = _User;

  @override
  factory UserType.fromJson(Map<String, dynamic> json) {
    return UserType(
      id: json['id'] as int,
      uid: json['uid'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      tel: json['tel'] as String,
      providerId: json['providerId'] as String,
      gender: genderFromString(json['gender'] as String),
      faceIdUrl: json['face_id'] as String,
      profilePicUrl: json['profile_pic'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      department: Department.fromJson(json['dept'] as Map<String, dynamic>),
    );
  }
}
