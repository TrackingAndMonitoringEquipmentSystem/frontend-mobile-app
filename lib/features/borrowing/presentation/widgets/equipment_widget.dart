import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/core/utils/environment.dart' as environment;
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment_partial.dart';
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
          Image.network(
            imageUrl.toString(),
            fit: BoxFit.fill,
            height: 70,
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
                            ? typeEquipment.duration.toString()
                            : '-',
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
}
