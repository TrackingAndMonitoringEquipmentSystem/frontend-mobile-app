import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/locker_display_widget.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class LockerTab extends HookWidget {
  const LockerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lockerRepository = getIt<LockerRepository>();
    final isLoading = useState(false);
    final lockers = useState(<Locker>[]);
    useEffect(
      () {
        Future<void>.microtask(() async {
          isLoading.value = true;
          final result = await lockerRepository.userViewLockers();
          isLoading.value = false;
          result.fold(
            (l) => handleErrorCase(context, l),
            (r) => lockers.value = r,
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
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount: 2,
        children: List<Widget>.generate(
          lockers.value.length,
          (index) => LockerDisplayWidget(
            building: lockers.value[index].room.floor!.building!.name,
            floor: lockers.value[index].room.floor!.name,
            id: lockers.value[index].id,
            name: lockers.value[index].name,
            room: lockers.value[index].room.name,
          ),
        ),
      ),
    );
  }
}
