import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/environment.dart' as environment;
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/type_equipment.dart';

class EquipmentWidget extends HookWidget {
  final TypeEquipment typeEquipment;

  const EquipmentWidget({required this.typeEquipment});

  @override
  Widget build(BuildContext context) {
    final imageUrl = Uri(
      scheme: environment.baseSchema,
      host: environment.baseApiUrl,
      port: environment.baseApiPort,
      path: typeEquipment.picUrl,
    );
    return Card(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    imageUrl.toString(),
                    fit: BoxFit.fill,
                    height: 75,
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 0,
                  child: Image.asset(
                    getImageAssetForStatus(typeEquipment.status!),
                  ),
                ),
                Positioned(
                  left: 40,
                  bottom: 0,
                  child: getWidgetTextStatus(
                    context,
                    typeEquipment.status!,
                    typeEquipment.countEquipment,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(typeEquipment.name),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/manage_locker_and_equipment/category_icon_medium.png',
                      fit: BoxFit.fill,
                      width: 16,
                      height: 16,
                    ),
                    Expanded(child: Text(typeEquipment.name)),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/manage_locker_and_equipment/clock_icon_small.png',
                      fit: BoxFit.fill,
                      width: 16,
                      height: 16,
                    ),
                    Expanded(
                      child: Text(
                        typeEquipment.duration != null
                            ? '${typeEquipment.duration.toString()} วัน'
                            : '- วัน',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getWidgetTextStatus(
      BuildContext context, EquipmentStatus status, int countEquipment) {
    switch (status) {
      case EquipmentStatus.available:
        return Text(
          'พร้อมใช้งาน ($countEquipment)',
          style: const TextStyle(color: Colors.white),
        );
      case EquipmentStatus.borrowing:
        return Text(
          'ถูกยืม ($countEquipment)',
          style: const TextStyle(color: Colors.white),
        );
      case EquipmentStatus.fixing:
        return Text(
          'ส่งซ่อม ($countEquipment)',
          style: const TextStyle(color: Colors.white),
        );
      case EquipmentStatus.late:
        return Text(
          'ล่าช้า ($countEquipment)',
          style: const TextStyle(color: Colors.white),
        );
    }
  }

  String getImageAssetForStatus(EquipmentStatus status) {
    switch (status) {
      case EquipmentStatus.available:
        return 'assets/icons/borrowing/available_blank_icon.png';
      case EquipmentStatus.borrowing:
        return 'assets/icons/borrowing/borrowing_blank_icon.png';
      case EquipmentStatus.fixing:
        return 'assets/icons/borrowing/fixing_blank_icon.png';
      case EquipmentStatus.late:
        return ' assets/icons/borrowing/fixing_blank_icon.png';
    }
  }
}
