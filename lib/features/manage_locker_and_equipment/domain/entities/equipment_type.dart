import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment.dart';

part 'equipment_type.freezed.dart';

@freezed
class EquipmentType with _$EquipmentType {
  const factory EquipmentType({
    required int id,
    required String name,
    required int duration,
    required List<Equipment> equipments,
  }) = _EquipmentType;

  @override
  factory EquipmentType.fromJson(Map<String, dynamic> json) {
    return EquipmentType(
      id: json['id'] as int,
      name: json['name'] as String,
      duration: json['duration'] as int,
      equipments: json['equipment'] != null
          ? (json['equipment'] as List)
              .map((e) => Equipment.fromJson(e as Map<String, dynamic>))
              .toList()
          : [],
    );
  }
}
