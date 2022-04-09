import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';

part 'department.freezed.dart';

@freezed
class Department with _$Department {
  @JsonSerializable(explicitToJson: true)
  const factory Department({
    required int id,
    @JsonKey(name: 'dept_name') required String name,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'created_by') required UserType createdBy,
    @JsonKey(name: 'updated_by') required UserType updatedBy,
  }) = _Department;
  @override
  factory Department.fromJson(Map<String, dynamic> json) => _$Department(json);
}
