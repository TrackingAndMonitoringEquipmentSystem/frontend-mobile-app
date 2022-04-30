import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/locker_display_widget.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/injection.dart';

class RenderLockers extends HookWidget {
  final List<int> lockerIds;
  final List<BluetoothDevice> devices;
  const RenderLockers({
    required this.lockerIds,
    required this.devices,
  });

  @override
  Widget build(BuildContext context) {
    final lockers = useState(<Locker>[]);
    final isLoading = useState(false);
    useEffect(
      () {
        Future<void>.microtask(() async {
          final result =
              await getIt<LockerRepository>().getLockerByIds(lockerIds);
          result.fold(
            (l) => handleErrorCase(context, l),
            (r) => lockers.value = r,
          );
        });

        return null;
      },
      [],
    );
    return isLoading.value
        ? const Center(child: Text('กำลังโหลดข้อมูลกรุณารอสักครู่...'))
        : GridView.count(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            children: List<Widget>.generate(
              lockers.value.length,
              (index) => Container(
                margin: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () async {
                    try {
                      isLoading.value = true;
                      await devices[index].connect();
                      isLoading.value = false;
                      AutoRouter.of(context).push(
                        ToggleLockerRoute(locker: lockers.value[index]),
                      );
                    } catch (error) {
                      isLoading.value = false;
                      if (error is PlatformException &&
                          error.code == 'already_connected') {
                        AutoRouter.of(context).push(
                          ToggleLockerRoute(locker: lockers.value[index]),
                        );
                      } else {
                        print('error: $error');
                      }
                    }
                  },
                  child: LockerDisplayWidget(
                    building: lockers.value[index].room.floor!.building!.name,
                    floor: lockers.value[index].room.floor!.name,
                    id: lockers.value[index].id,
                    name: lockers.value[index].name,
                    room: lockers.value[index].room.name,
                  ),
                ),
              ),
            ),
          );
  }
}
