import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/domain/repositories/public_repository.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_multiple_select.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/core/presentation/widgets/multiple_select_custom_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/building.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/floor.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/room.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/injection.dart';

class AddOrEditLockerPage extends HookWidget {
  const AddOrEditLockerPage(this.lockerId, {Key? key}) : super(key: key);
  final int lockerId;
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<List<String>?> selectedAccount = useState(null);
    final ValueNotifier<bool> isEdit = useState(false);
    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final ValueNotifier<List<Department>> departments = useState([]);
    final ValueNotifier<List<Building>> buildings = useState([]);
    final ValueNotifier<Building?> buildingSelected = useState(null);
    final ValueNotifier<Room?> roomSelected = useState(null);
    final ValueNotifier<Floor?> floorSelected = useState(null);
    final ValueNotifier<String> name = useState('');
    final ValueNotifier<String> description = useState('');
    void Function()? floorClear;
    void Function()? roomClear;
    final lockerRepository = getIt<LockerRepository>();
    useEffect(
      () {
        Future<void>.microtask(() async {
          final departmentsResult =
              await getIt<PublicRepository>().getDepartments();
          departmentsResult.fold(
            (l) => restFailure.value = l,
            (r) => departments.value = r,
          );
          if (departmentsResult.isLeft()) {
            return;
          }
          final buildingsResult = await lockerRepository.getBuildings();
          buildingsResult.fold(
            (l) => restFailure.value = l,
            (r) => buildings.value = r,
          );
        });
        return null;
      },
      [],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEdit.value ? 'แก้ไขข้อมูล' : 'เพิ่มตู้ล็อกเกอร์',
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      InputText(
                        onChanged: (value) => name.value = value,
                        label: 'ชื่อตู้ล็อกเกอร์',
                        placeHolder: 'ชื่อตู้ล็อกเกอร์',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      InputText(
                        onChanged: (value) => description.value = value,
                        label: 'คำอธิบาย',
                        placeHolder: 'คำอธิบาย',
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/manage_locker_and_equipment/location_icon_medium.png',
                        fit: BoxFit.fill,
                        width: 30,
                        height: 30,
                      ),
                      const Text('สถานที่ตั้ง'),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          '+ เพิ่มสถานที่',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      BottomSheetSingleSelect(
                        label: 'อาคาร',
                        placeHolder: 'อาคาร',
                        onChanged: (value) {
                          buildingSelected.value = value?['value'] as Building?;
                          floorSelected.value = null;
                          if (floorClear != null) {
                            floorClear!();
                          } else {
                            print('floor clear = null');
                          }
                        },
                        listChoice: buildings.value
                            .map(
                              (e) => {'displayText': e.name, 'value': e},
                            )
                            .toList(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      BottomSheetSingleSelect(
                        label: 'ชั้น',
                        placeHolder: 'ชั้น',
                        onChanged: (value) {
                          floorSelected.value = value?['value'] as Floor?;
                          roomSelected.value = null;
                          if (roomClear != null) {
                            roomClear!();
                          } else {
                            print('room clear = null');
                          }
                        },
                        listChoice: buildingSelected.value != null
                            ? [
                                ...buildingSelected.value!.floors!.map(
                                  (e) => {
                                    'displayText': e.name,
                                    'value': e,
                                  },
                                )
                              ]
                            : [],
                        bindClearFunction: (clearFunction) =>
                            floorClear = clearFunction,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      BottomSheetSingleSelect(
                        label: 'ห้อง',
                        placeHolder: 'ห้อง',
                        onChanged: (value) {
                          roomSelected.value = value?['value'] as Room?;
                        },
                        listChoice: floorSelected.value != null
                            ? [
                                ...floorSelected.value!.rooms!.map(
                                  (e) => {
                                    'displayText': e.name,
                                    'value': e,
                                  },
                                )
                              ]
                            : [],
                        bindClearFunction: (clearFunction) =>
                            roomClear = clearFunction,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/manage_locker_and_equipment/account_group_icon_secondary_color.png',
                        width: 30,
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                      const Text('จัดการสิทธิการใช้งาน')
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'เลือกแผนกและผู้ใช้งาน เพื่อเพิ่มสิทธิการใช้งานตู้ล็อกเกอร์',
                        style: Theme.of(context).primaryTextTheme.caption,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      BottomSheetMultipleSelect(
                        label: 'แผนก',
                        placeHolder: 'แผนก',
                        onChanged: (value) {
                          print(value);
                        },
                        listChoice: departments.value
                            .map(
                              (e) => {
                                'displayText': e.name,
                                'value': e,
                                'isSelected': false,
                              },
                            )
                            .toList(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      MultipleSelectCustomWidget(
                        listValue: null,
                        label: 'บัญชีผู้ใช้ (ถ้ามี)',
                        placeHolder: 'บัญชีผู้ใช้ (ถ้ามี)',
                        onTap: () async {
                          return await AutoRouter.of(context)
                              .push(const AddAccountRoute()) as List<String>?;
                        },
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: Row(
                      children: [
                        Button(
                          'ถัดไป',
                          onPressed: () async {
                            final result =
                                await lockerRepository.registerLocker(
                              id: lockerId,
                              name: name.value,
                              description: description.value,
                              departments: departments.value,
                              room: roomSelected.value!,
                            );
                            if (result.isRight()) {
                              lockerRepository.currentLocker =
                                  result.fold((l) => null, (r) => r);
                              AutoRouter.of(context).push(
                                AllEquipmentRoute(
                                  lockerId: lockerRepository.currentLocker!.id,
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
