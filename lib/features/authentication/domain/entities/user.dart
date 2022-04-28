import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';

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
          json.containsKey('providerId') ? json['providerId'] as String : null,
      gender: genderFromString(json['gender'] as String),
      faceIdUrl: json['face_id'] as String,
      profilePicUrl: json['profile_pic'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      department: json.containsKey('dept')
          ? Department.fromJson(json['dept'] as Map<String, dynamic>)
          : null,
    );
  }
}
