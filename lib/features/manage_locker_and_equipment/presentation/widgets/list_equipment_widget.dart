import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_filter_widget.dart';

class ListEquipmentWidget extends HookWidget {
  final List<Equipment> equipments;
  const ListEquipmentWidget({
    Key? key,
    required this.equipments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PopupMenuButton(
              onSelected: (value) {},
              child: Row(
                children: [
                  Text(
                    'เรียงตาม ก-ฮ ',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                  const Icon(Icons.expand_more)
                ],
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "เรียงตาม ก-ฮ",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet<dynamic>(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return const EquipmentFilterWidget(
                      listChoices: {
                        'equipmentStatus': [
                          {'displayText': 'พร้อมใช้งาน'},
                          {'displayText': 'ถูกยืม'},
                          {'displayText': 'ส่งซ่อม'},
                        ]
                      },
                    );
                  },
                );
              },
              icon: const Icon(Icons.tune),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: equipments.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  AutoRouter.of(context).push(const EquipmentDetailRoute());
                },
                child: Card(
                  child: SizedBox(
                    width: 200,
                    child: EquipmentDisplayWidget(
                      equipment: equipments[index],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
