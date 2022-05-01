import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/borrowing/presentation/widgets/equipment_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/type_equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class EquipmentTab extends HookWidget {
  const EquipmentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lockerRepository = getIt<LockerRepository>();
    final isLoading = useState(false);
    final equipments = useState(<TypeEquipment>[]);
    useEffect(
      () {
        Future<void>.microtask(() async {
          isLoading.value = true;
          final result = await lockerRepository.userViewEquipments();
          isLoading.value = false;
          result.fold(
            (l) => handleErrorCase(context, l),
            (r) => equipments.value = r,
          );
        });

        return null;
      },
      [],
    );
    return LoadingOverlayPro(
      isLoading: isLoading.value,
      progressIndicator: const CircularProgressIndicator(),
      child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        crossAxisCount: 2,
        children: List<Widget>.generate(
          equipments.value.length,
          (index) => EquipmentWidget(
            typeEquipment: equipments.value[index],
          ),
        ),
      ),
    );
  }
}
