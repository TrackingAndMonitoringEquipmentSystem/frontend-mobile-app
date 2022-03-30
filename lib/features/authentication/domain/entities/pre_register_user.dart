import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';

part 'pre_register_user.freezed.dart';

@freezed
class PreRegisterUser with _$PreRegisterUser {
  const factory PreRegisterUser({
    required FirstName? firstName,
    required LastName? lastName,
    required Gender? gender,
    required TelNo? telNo,
    required EmailAddress? email,
    required Password? password,
    required Role? role,
    required String? department,
    required String? pin,
  }) = _PreRegisterUser;
}
