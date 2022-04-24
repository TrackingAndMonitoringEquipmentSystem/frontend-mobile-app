import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/injection.dart';

class AddingEquipmentPage extends HookWidget {
  final int lockerId;
  const AddingEquipmentPage(this.lockerId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lockerRepository = getIt<LockerRepository>();
    useEffect(
      () {
        Future<void>.microtask(() async {
          final result = await lockerRepository.addEquipment(
            id: lockerId,
          );
          result.fold(
            (l) => null,
            (r) => AutoRouter.of(context).replace(
              AddEquipmentRoute(
                scanResult: r,
                lockerId: lockerId,
              ),
            ),
          );
        });
        return null;
      },
      [],
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Center(
            //   child: Image.asset(
            //     'assets/images/manage_locker_and_equipment/toollo_loading.png',
            //     fit: BoxFit.fill,
            //     width: 200,
            //     height: 200,
            //   ),
            // ),
            Center(child: CircularProgressIndicator()),
            Center(child: Text('กรุณารอสักครู่')),
            Center(child: Text('ระบบกำลังแสกนหาอุปกรณ์')),
          ],
        ),
      ),
    );
  }
}
