import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';

part 'department.freezed.dart';

@freezed
class Department with _$Department {
  const factory Department({
    required int id,
    required String? name,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required UserType? createdBy,
    required UserType? updatedBy,
    required List<Locker>? lockers,
  }) = _Department;

  @override
  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'] as int,
      name: json['dept_name'] != null ? json['dept_name'] as String : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'] as String)
          : null,
      createdBy: json.containsKey('created_by')
          ? UserType.fromJson(json['created_by'] as Map<String, dynamic>)
          : null,
      updatedBy: json.containsKey('updated_by')
          ? UserType.fromJson(json['updated_by'] as Map<String, dynamic>)
          : null,
      lockers: json.containsKey('locker')
          ? (json['locker'] as List)
              .map((e) => Locker.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
}
