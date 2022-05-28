import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_data.freezed.dart';

@freezed
class RoleData with _$RoleData {
  const factory RoleData({
    required int id,
    required String? name,
    required Map<String, dynamic>? permission,
  }) = _RoleData;

  @override
  factory RoleData.fromJson(Map<String, dynamic> json) {
    return RoleData(
      id: json['id'] as int,
      name: json['role'] != null ? json['role'] as String : null,
      permission: json['permission'] != null
          ? json['permission'] as Map<String, dynamic>
          : null,
    );
  }
}
