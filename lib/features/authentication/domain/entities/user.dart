import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';

part 'user.freezed.dart';

@freezed
class UserType with _$UserType {
  const factory UserType({
    required int id,
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
    required DateTime updatedAt,
  }) = _User;

  @override
  factory UserType.fromJson(Map<String, dynamic> json) => _$UserType(json);
}
