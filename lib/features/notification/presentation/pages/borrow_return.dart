import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/borrowing/domain/borrowing_repository.dart';
import 'package:frontend/features/borrowing/domain/entities/borrowing.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/injection.dart';
import 'package:intl/intl.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class BorrowReturnPage extends HookWidget {
  final int borrowReturnGroupId;
  const BorrowReturnPage({
    required this.borrowReturnGroupId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLoading = useState(false);
    final borrowings = useState(<Borrowing>[]);
    useEffect(
      () {
        Future<void>.microtask(() async {
          isLoading.value = true;
          try {
            final result = await getIt<BorrowingRepository>()
                .getBorrowGroup(borrowReturnGroupId);
            isLoading.value = false;
            result.fold(
              (l) => handleErrorCase(context, l),
              (r) => borrowings.value = r,
            );
          } catch (error) {
            print('Error: $error');
          }
        });

        return null;
      },
      [],
    );
    return LoadingOverlayPro(
      progressIndicator: const CircularProgressIndicator(),
      isLoading: isLoading.value,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            borrowings.value.isNotEmpty
                ? borrowings.value[0].status == BorrowingStatus.borrowing
                    ? 'รายการยืม'
                    : 'รายการคืน'
                : 'รายการยืม/คืน',
            style: const TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: const [Text('รายละเอียด')],
              ),
              if (borrowings.value.isNotEmpty &&
                  borrowings.value[0].status == BorrowingStatus.borrowing)
                Row(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text('วันที่ยืม :'),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        DateFormat('dd-MM-yyy HH:mm น.')
                            .format(borrowings.value[0].borrowedAt.toLocal()),
                      ),
                    ),
                  ],
                ),
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text('ชื่อ :'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      borrowings.value.isNotEmpty
                          ? borrowings.value[0].equipment.locker!.name
                          : 'loading...',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text('Locker ID :'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      borrowings.value.isNotEmpty
                          ? borrowings.value[0].equipment.locker!.id.toString()
                          : 'loading...',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text('สถานที่ตั้ง'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      borrowings.value.isNotEmpty
                          ? 'ห้อง ${borrowings.value[0].equipment.locker!.room.name} ชั้น ${borrowings.value[0].equipment.locker!.room.floor!.name} อาคาร ${borrowings.value[0].equipment.locker!.room.floor!.building!.name}'
                          : 'loading...',
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Text(
                    borrowings.value.isNotEmpty
                        ? borrowings.value[0].status ==
                                BorrowingStatus.borrowing
                            ? 'รายการยืม'
                            : 'รายการคืน'
                        : 'รายการยืม/คืน',
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: borrowings.value.length,
                  itemBuilder: (context, index) {
                    print(borrowings.value[index].equipment);
                    return Card(
                      child: SizedBox(
                        width: 200,
                        child: EquipmentDisplayWidget(
                          equipment: borrowings.value[index].equipment,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: screenSize.height * 0.15,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Divider(),
                Row(
                  children: [
                    Button(
                      'ตกลง',
                      onPressed: () {
                        AutoRouter.of(context).pop();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
