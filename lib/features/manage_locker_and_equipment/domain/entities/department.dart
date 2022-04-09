import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';

part 'department.freezed.dart';

@freezed
class Department with _$Department {
  const factory Department({
    required int id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    required UserType createdBy,
    required UserType updatedBy,
  }) = _Department;

  @override
  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'] as int,
      name: json['dept_name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      createdBy: UserType.fromJson(json['created_by'] as Map<String, dynamic>),
      updatedBy: UserType.fromJson(json['updated_by'] as Map<String, dynamic>),
    );
  }
}
