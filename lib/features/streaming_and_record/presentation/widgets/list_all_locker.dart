import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/room.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class ListAllLockerWidget extends HookWidget {
  final StreamAndRecordView viewBy;
  const ListAllLockerWidget({
    Key? key,
    required this.viewBy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final departments = useState(<Department>[]);
    final rooms = useState(<Room>[]);
    final lockerRepository = getIt<LockerRepository>();
    useEffect(
      () {
        Future<void>.microtask(() async {
          isLoading.value = true;
          final result = await lockerRepository.getAllByDepartment();
          isLoading.value = false;
          result.fold(
            (l) => handleErrorCase(context, l),
            (r) => departments.value = r,
          );
        });
        return null;
      },
      [],
    );
    return LoadingOverlayPro(
      isLoading: isLoading.value,
      progressIndicator: const CircularProgressIndicator(),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: ExpansionPanelList.radio(
                children: List<ExpansionPanelRadio>.generate(
                    getEntityLength(
                      departments: departments.value,
                      rooms: rooms.value,
                    ), (index) {
                  return ExpansionPanelRadio(
                    canTapOnHeader: true,
                    body: _buildExpansionPanelRadioBody(
                      context,
                      department: viewBy == StreamAndRecordView.department
                          ? departments.value[index]
                          : null,
                      room: viewBy == StreamAndRecordView.location
                          ? rooms.value[index]
                          : null,
                    ),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return _buildExpansionPanelRadioHeader(
                        context,
                        department: viewBy == StreamAndRecordView.department
                            ? departments.value[index]
                            : null,
                        room: viewBy == StreamAndRecordView.location
                            ? rooms.value[index]
                            : null,
                      );
                    },
                    value: index,
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }

  int getEntityLength({
    required List<Department> departments,
    required List<Room> rooms,
  }) {
    switch (viewBy) {
      case StreamAndRecordView.department:
        return departments.length;
      case StreamAndRecordView.location:
        return rooms.length;
    }
  }

  Widget _buildExpansionPanelRadioHeader(
    BuildContext context, {
    required Department? department,
    required Room? room,
  }) {
    if (viewBy == StreamAndRecordView.department) {
      return Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            department!.name!,
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
          Text(
            ' (${department.lockers!.length})',
            style: Theme.of(context).primaryTextTheme.caption,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            'ห้อง 504 ชั้น 5 Headquarter',
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
          Text(
            ' (2)',
            style: Theme.of(context).primaryTextTheme.caption,
          ),
        ],
      );
    }
  }

  Widget _buildExpansionPanelRadioBody(
    BuildContext context, {
    required Department? department,
    required Room? room,
  }) {
    if (viewBy == StreamAndRecordView.department) {
      return Column(
        children: department!.lockers!
            .map(
              (e) => ListTile(
                leading: Image.asset(
                  'assets/icons/manage_locker_and_equipment/locker_icon_medium.png',
                  width: 48,
                  height: 45.18,
                ),
                title: Text(e.name),
                subtitle: Text('ID: ${e.id}'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
                onTap: () {
                  AutoRouter.of(context).push(AllCameraRoute(locker: e));
                },
              ),
            )
            .toList(),
      );
    } else {
      return ListTile(
        leading: Image.asset(
          'assets/icons/manage_locker_and_equipment/locker_icon_medium.png',
          width: 48,
          height: 45.18,
        ),
        title: const Text('ตู้เก็บ Macbook 1'),
        subtitle: const Text('ID: 111111'),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
        onTap: () {},
      );
    }
  }
}
