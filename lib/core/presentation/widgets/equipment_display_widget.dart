import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/utils/enum.dart';

class EquipmentImageDisplayWidget extends HookWidget {
  final Size size;
  final Widget image;
  final EquipmentStatus? status;
  const EquipmentImageDisplayWidget({
    Key? key,
    required this.image,
    required this.size,
    this.status,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Stack(
        children: [
          Align(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: image,
            ),
          ),
          if (status != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                getImageForStatus(status!),
                fit: BoxFit.fill,
                width: size.width * 0.8,
              ),
            )
        ],
      ),
    );
  }

  String getImageForStatus(EquipmentStatus status) {
    switch (status) {
      case EquipmentStatus.late:
        return 'assets/icons/manage_locker_and_equipment/late_status_icon.png';
      case EquipmentStatus.available:
        return 'assets/icons/manage_locker_and_equipment/available_status_icon.png';
      case EquipmentStatus.borrowing:
        return 'assets/icons/manage_locker_and_equipment/borrowing_status_icon.png';
      case EquipmentStatus.fixing:
        return 'assets/icons/manage_locker_and_equipment/fixing_status_icon.png';
    }
  }
}
