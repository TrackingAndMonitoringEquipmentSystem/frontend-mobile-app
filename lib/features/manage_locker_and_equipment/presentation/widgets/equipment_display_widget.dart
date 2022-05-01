import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/core/utils/environment.dart' as environment;
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment.dart';

class EquipmentDisplayWidget extends StatelessWidget {
  final Equipment equipment;
  const EquipmentDisplayWidget({
    Key? key,
    required this.equipment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = Uri(
      scheme: environment.baseSchema,
      host: environment.baseApiUrl,
      port: environment.baseApiPort,
      path: equipment.picUrl,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          child: Column(
            children: [
              EquipmentImageDisplayWidget(
                status: equipment.status,
                image: Image.network(
                  imageUrl.toString(),
                  fit: BoxFit.fill,
                ),
                size: const Size(104, 104),
              )
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: Column(
            children: [
              Row(
                children: [
                  Text(equipment.name),
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
                  Text(equipment.type?.name ?? 'ไม่มีหมวดหมู่'),
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
                  Text(
                    '${equipment.type?.duration.toString() ?? equipment.duration.toString()} วัน',
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/manage_locker_and_equipment/tag_icon_small.png',
                    fit: BoxFit.fill,
                    width: 16,
                    height: 16,
                  ),
                  Text(
                    equipment.tagId!,
                  ),
                ],
              )

              // Row(
              //   children: [
              //     Text(
              //       'สว่านไฟฟ้าสีฟ้า',
              //       style: Theme.of(context).primaryTextTheme.headline3,
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Image.asset(
              //       'assets/icons/manage_locker_and_equipment/category_icon_medium.png',
              //       fit: BoxFit.fill,
              //       width: 16,
              //       height: 16,
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     Text(
              //       'สว่านไฟฟ้า',
              //       style: Theme.of(context).primaryTextTheme.headline3,
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Image.asset(
              //       'assets/icons/manage_locker_and_equipment/clock_icon_small.png',
              //       fit: BoxFit.fill,
              //       width: 16,
              //       height: 16,
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     Text(
              //       '7 วัน',
              //       style: Theme.of(context).primaryTextTheme.headline3,
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Image.asset(
              //       'assets/icons/manage_locker_and_equipment/tag_icon_small.png',
              //       fit: BoxFit.fill,
              //       width: 16,
              //       height: 16,
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     Text(
              //       'C1-11-FE-FF-FF-FF',
              //       style: Theme.of(context).primaryTextTheme.headline3,
              //     ),
              //   ],
              // ),
            ],
          ),
        )
      ],
    );
  }
}
