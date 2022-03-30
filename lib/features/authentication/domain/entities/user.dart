import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';

part 'user.freezed.dart';

@freezed
class UserType with _$UserType {
  const factory UserType({
    required String uid,
    required EmailAddress emailAddress,
    required String? providerId,
  }) = _User;
}
