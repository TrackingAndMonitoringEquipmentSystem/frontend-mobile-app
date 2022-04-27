import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/room.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/department_filter_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_filter_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/location_filter_widget.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class ListLockerAndEquipmentWidget extends HookWidget {
  final ManagementLockerAndEquipmentView viewBy;
  final List<Department>? departments;
  const ListLockerAndEquipmentWidget({
    Key? key,
    required this.viewBy,
    this.departments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final departments = useState(this.departments ?? <Department>[]);
    final rooms = useState(<Room>[]);
    final equipments = useState([]);
    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);
    useEffect(
      () {
        Future<void>.microtask(() async {
          if (viewBy == ManagementLockerAndEquipmentView.department) {
            if (departments.value.isEmpty) {
              isLoading.value = true;
              final result =
                  await getIt<LockerRepository>().getAllByDepartment();
              isLoading.value = false;
              result.fold(
                (l) => restFailure.value = l,
                (r) => departments.value = r,
              );
            }
          }
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
                  if (viewBy == ManagementLockerAndEquipmentView.department) {
                    showModalBottomSheet<dynamic>(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return DepartmentFilterWidget(
                          listChoices: departments.value
                              .map(
                                (e) => {'displayText': e.name},
                              )
                              .toList(),
                        );
                      },
                    );
                  } else if (viewBy ==
                      ManagementLockerAndEquipmentView.location) {
                    showModalBottomSheet<dynamic>(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return const LocationFilterWidget(
                          listChoices: [
                            {
                              'displayText': 'อาคาร 1',
                              'floors': {
                                'displayText': 'ชั้น 1',
                                'rooms': [
                                  {'displayText': 'ห้อง 1'},
                                  {'displayText': 'ห้อง 2'},
                                  {'displayText': 'ห้อง 3'},
                                ]
                              },
                            },
                            {
                              'displayText': 'อาคาร 2',
                              'floors': {
                                'displayText': 'ชั้น 1',
                                'rooms': [
                                  {'displayText': 'ห้อง 1'},
                                  {'displayText': 'ห้อง 2'},
                                  {'displayText': 'ห้อง 3'},
                                ]
                              },
                            },
                            {
                              'displayText': 'อาคาร 3',
                              'floors': {
                                'displayText': 'ชั้น 1',
                                'rooms': [
                                  {'displayText': 'ห้อง 1'},
                                  {'displayText': 'ห้อง 2'},
                                  {'displayText': 'ห้อง 3'},
                                ]
                              },
                            },
                            {
                              'displayText': 'อาคาร 4',
                              'floors': {
                                'displayText': 'ชั้น 1',
                                'rooms': [
                                  {'displayText': 'ห้อง 1'},
                                  {'displayText': 'ห้อง 2'},
                                  {'displayText': 'ห้อง 3'},
                                ]
                              },
                            },
                          ],
                        );
                      },
                    );
                  } else if (viewBy ==
                      ManagementLockerAndEquipmentView.equipment) {
                    showModalBottomSheet<dynamic>(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return const EquipmentFilterWidget(
                          listChoices: {
                            'equipmentType': [
                              {'displayText': 'สว่านไฟฟ้า'},
                              {'displayText': 'ค้อน'},
                              {'displayText': 'Macbook'},
                              {'displayText': 'อุปกรณ์สำนักงาน'},
                              {'displayText': 'ไม่มีชนิด'},
                            ],
                            'equipmentStatus': [
                              {'displayText': 'พร้อมใช้งาน'},
                              {'displayText': 'ถูกยืม'},
                              {'displayText': 'ส่งซ่อม'},
                            ],
                            'department': [
                              {'displayText': 'แผนกบริหาร'},
                              {'displayText': 'แผนกบุคคล'},
                              {'displayText': 'แผนกจัดซื้อ'},
                              {'displayText': 'แผนกการตลาด'},
                              {'displayText': 'แผนกบัญชี'},
                            ],
                            'lockers': [
                              {'displayText': 'locker 1'},
                              {'displayText': 'locker 2'},
                              {'displayText': 'locker 3'},
                              {'displayText': 'locker 4'},
                              {'displayText': 'locker 5'},
                            ]
                          },
                        );
                      },
                    );
                  }
                },
                icon: const Icon(Icons.tune),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ExpansionPanelList.radio(
                children: List<ExpansionPanelRadio>.generate(
                    getEntityLength(
                      departments: departments.value,
                      rooms: rooms.value,
                      equipments: equipments.value,
                    ), (index) {
                  return ExpansionPanelRadio(
                    canTapOnHeader: true,
                    body: _buildExpansionPanelRadioBody(
                      context,
                      department:
                          viewBy == ManagementLockerAndEquipmentView.department
                              ? departments.value[index]
                              : null,
                      room: viewBy == ManagementLockerAndEquipmentView.location
                          ? rooms.value[index]
                          : null,
                      equipment:
                          viewBy == ManagementLockerAndEquipmentView.equipment
                              ? equipments.value[index]
                              : null,
                    ),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return _buildExpansionPanelRadioHeader(
                        context,
                        department: viewBy ==
                                ManagementLockerAndEquipmentView.department
                            ? departments.value[index]
                            : null,
                        room:
                            viewBy == ManagementLockerAndEquipmentView.location
                                ? rooms.value[index]
                                : null,
                        equipment:
                            viewBy == ManagementLockerAndEquipmentView.equipment
                                ? equipments.value[index]
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
    required List equipments,
  }) {
    switch (viewBy) {
      case ManagementLockerAndEquipmentView.department:
        return departments.length;
      case ManagementLockerAndEquipmentView.location:
        return rooms.length;
      case ManagementLockerAndEquipmentView.equipment:
        return equipments.length;
    }
  }

  Widget _buildExpansionPanelRadioHeader(
    BuildContext context, {
    required Department? department,
    required Room? room,
    required dynamic equipment,
  }) {
    switch (viewBy) {
      case ManagementLockerAndEquipmentView.department:
        return Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              department!.name,
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
            Text(
              ' (${department.lockers!.length})',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
          ],
        );
      case ManagementLockerAndEquipmentView.location:
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
      default:
        return Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              'สว่านไฟฟ้า',
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
    required dynamic equipment,
  }) {
    if (viewBy == ManagementLockerAndEquipmentView.equipment) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: EquipmentDisplayWidget(
                    id: 1,
                    image: Container(),
                  ),
                ),
              )
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/manage_locker_and_equipment/locker_icon_small_navy.png',
                        fit: BoxFit.fill,
                        width: 16,
                        height: 15.06,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'เครื่องมือช่าง',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'ID: 111111',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/manage_locker_and_equipment/location_icon_medium.png',
                        fit: BoxFit.fill,
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'ห้อง 504 ชั้น 5',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'อาคาร Headquarters',
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      );
    } else {
      if (viewBy == ManagementLockerAndEquipmentView.department) {
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
                    AutoRouter.of(context)
                        .push(AllEquipmentRoute(lockerId: e.id));
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
          onTap: () {
            AutoRouter.of(context).push(
              AllEquipmentRoute(
                lockerId: 1,
              ),
            );
          },
        );
      }
    }
  }
}
