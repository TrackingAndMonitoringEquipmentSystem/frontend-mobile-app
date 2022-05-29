import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/list_equipment_widget.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class AllEquipmentPage extends HookWidget {
  final int lockerId;
  const AllEquipmentPage({
    Key? key,
    required this.lockerId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLoading = useState(false);
    final equipments = useState(<Equipment>[]);
    final ValueNotifier<RestFailure?> failure = useState(null);
    final locker = useState<Locker?>(null);
    useEffect(
      () {
        Future<void>.microtask(() async {
          isLoading.value = true;
          final results =
              await getIt<LockerRepository>().getLockerByIds([lockerId]);
          isLoading.value = false;
          results.fold(
            (l) => failure.value = l,
            (r) {
              locker.value = r[0];
              equipments.value = r[0].equipments!;
            },
          );
        });
        return null;
      },
      [],
    );
    return LoadingOverlayPro(
      isLoading: isLoading.value,
      progressIndicator: const CircularProgressIndicator(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            locker.value?.name ?? 'loading...',
            style: const TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          // actions: [
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          //   PopupMenuButton(
          //     onSelected: (value) {
          //       switch (value) {
          //         case 1:
          //           AutoRouter.of(context)
          //               .push(AddOrEditLockerRoute(lockerId: 1));
          //           break;
          //         case 2:
          //           AutoRouter.of(context).push(const LockerDetailRoute());
          //           break;
          //         case 3:
          //           AutoRouter.of(context).push(const ManagePermissionRoute());
          //           break;
          //       }
          //     },
          //     icon: const Icon(Icons.more_vert),
          //     itemBuilder: (context) => [
          //       PopupMenuItem(
          //         value: 1,
          //         child: Text(
          //           "แก้ไขข้อมูล",
          //           style: Theme.of(context).primaryTextTheme.bodyText1,
          //         ),
          //       ),
          //       PopupMenuItem(
          //         value: 2,
          //         child: Text(
          //           "รายละเอียด",
          //           style: Theme.of(context).primaryTextTheme.bodyText1,
          //         ),
          //       ),
          //       PopupMenuItem(
          //         value: 3,
          //         child: Text(
          //           "จัดการสิทธิการใช้งาน",
          //           style: Theme.of(context).primaryTextTheme.bodyText1,
          //         ),
          //       ),
          //       PopupMenuItem(
          //         value: 4,
          //         child: Text(
          //           "รีเซ็ตเลข Mac address",
          //           style: Theme.of(context).primaryTextTheme.bodyText1,
          //         ),
          //       ),
          //       PopupMenuItem(
          //         value: 5,
          //         child: Text(
          //           "ลบตู้ล็อกเกอร์",
          //           style: Theme.of(context)
          //               .primaryTextTheme
          //               .bodyText1!
          //               .copyWith(color: Theme.of(context).colorScheme.error),
          //         ),
          //       ),
          //     ],
          //   ),
          // ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
            screenSize.width * 0.1,
            screenSize.height * 0.01,
            screenSize.width * 0.1,
            0,
          ),
          child: equipments.value.isNotEmpty
              ? _buildFoundCase(context, equipments.value)
              : _buildNotFoundCase(context),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Button(
                'เพิ่มอุปกรณ์',
                onPressed: () {
                  AutoRouter.of(context)
                      .push(AddingEquipmentRoute(lockerId: lockerId));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNotFoundCase(BuildContext context) {
    return Center(
      child: Text(
        'ไม่พบอุปกรณ์ในตู้นี้',
        style: Theme.of(context).primaryTextTheme.caption,
      ),
    );
  }

  Widget _buildFoundCase(BuildContext context, List<Equipment> equipments) {
    return ListEquipmentWidget(
      equipments: equipments,
    );
  }
}
