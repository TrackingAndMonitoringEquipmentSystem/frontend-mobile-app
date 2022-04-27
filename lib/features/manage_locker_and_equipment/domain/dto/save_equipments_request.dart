import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment.dart';

class SaveEquipmentsRequest {
  final String uuid;
  final int lockerId;
  final List<EquipmentRequest> equipments;
  SaveEquipmentsRequest(
    this.uuid,
    this.lockerId,
    this.equipments,
  );

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'lockerId': lockerId,
      'equipments': equipments.map((e) => e.toJson()).toList(),
    };
  }
}

class EquipmentRequest {
  final String name;
  final int? typeId;
  final int duration;
  final String macAddress;
  final String base64Image;

  EquipmentRequest({
    required this.name,
    required this.typeId,
    required this.duration,
    required this.macAddress,
    required this.base64Image,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'typeId': typeId,
      'duration': duration,
      'macAddress': macAddress,
      'base64Image': base64Image,
    };
  }

  factory EquipmentRequest.fromJson(Map<String, dynamic> json) {
    return EquipmentRequest(
        name: json['name'] as String,
        typeId: json.containsKey('typeId') ? json['typeId'] as int : null,
        duration: json['duration']);
  }
}
