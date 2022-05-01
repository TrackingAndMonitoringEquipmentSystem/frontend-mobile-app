import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment_partial.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/floor.dart';

part 'type_equipment.freezed.dart';

@freezed
class TypeEquipment with _$TypeEquipment {
  const factory TypeEquipment({
    required int? id,
    required String name,
    required int? duration,
    required EquipmentStatus? status,
    required String? picUrl,
  }) = _TypeEquipment;

  @override
  factory TypeEquipment.fromJson(Map<String, dynamic> json) {
    return TypeEquipment(
      id: json['type_id'] != null ? json['type_id'] as int : null,
      name: json['type_name'] as String,
      duration:
          json['type_duration'] != null ? json['type_duration'] as int : null,
      status: json['equipment_status'] != null
          ? equipmentStatusFromString(json['equipment_status'] as String)
          : null,
      picUrl: json['equipment_equip_pic'] != null
          ? json['equipment_equip_pic'] as String
          : null,
    );
  }
}
