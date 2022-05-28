import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend/features/role_management/domain/entities/role_data.dart';

part 'user.freezed.dart';

@freezed
class UserType with _$UserType {
  const factory UserType({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
    required String tel,
    required String? providerId,
    required Gender? gender,
    required String? faceIdUrl,
    required String? profilePicUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Department? department,
    required RoleData? role,
  }) = _User;

  @override
  factory UserType.fromJson(Map<String, dynamic> json) {
    return UserType(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      tel: json['tel'] as String,
      providerId:
          json['providerId'] != null ? json['providerId'] as String : null,
      gender: json['gender'] != null
          ? genderFromString(json['gender'] as String)
          : null,
      faceIdUrl: json['face_id'] != null ? json['face_id'] as String : null,
      profilePicUrl: json['profile_pic'] != null && json['profile_pic'] != ''
          ? json['profile_pic'] as String
          : null,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      department: json['dept'] != null
          ? Department.fromJson(json['dept'] as Map<String, dynamic>)
          : null,
      role: json['role'] != null
          ? RoleData.fromJson(json['role'] as Map<String, dynamic>)
          : null,
    );
  }
}
