import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/list_equipment_widget.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class AllEquipmentPage extends HookWidget {
  final Locker locker;
  const AllEquipmentPage({
    Key? key,
    required this.locker,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLoading = useState(false);
    final equipments = useState(<Equipment>[]);
    useEffect(
      () {
        return null;
      },
      [],
    );
    return LoadingOverlayPro(
      isLoading: isLoading.value,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            locker.name,
            style: const TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 1:
                    AutoRouter.of(context)
                        .push(AddOrEditLockerRoute(lockerId: 1));
                    break;
                  case 2:
                    AutoRouter.of(context).push(const LockerDetailRoute());
                    break;
                  case 3:
                    AutoRouter.of(context).push(const ManagePermissionRoute());
                    break;
                }
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "แก้ไขข้อมูล",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "รายละเอียด",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(
                    "จัดการสิทธิการใช้งาน",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text(
                    "รีเซ็ตเลข Mac address",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text(
                    "ลบตู้ล็อกเกอร์",
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .copyWith(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
            screenSize.width * 0.1,
            screenSize.height * 0.01,
            screenSize.width * 0.1,
            0,
          ),
          child: false ? _buildFoundCase(context) : _buildNotFoundCase(context),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          child: Button(
            'เพิ่มอุปกรณ์',
            onPressed: () {
              AutoRouter.of(context).push(const AddingEquipment());
            },
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

  Widget _buildFoundCase(BuildContext context) {
    return const ListEquipmentWidget();
  }
}
