import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_number_picker.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select_with_add_choice.dart';
import 'package:frontend/core/presentation/widgets/equipment_display_widget.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/core/utils/environment.dart';

class EquipmentFormWidget extends HookWidget {
  final int? id;
  final Widget image;
  final List<String> macAddresses;
  final void Function(Map<String, dynamic> dataUpdated) onChanged;
  final bool isShowError;
  final bool isMacAddressDuplicated;
  const EquipmentFormWidget({
    Key? key,
    this.id,
    required this.image,
    required this.macAddresses,
    required this.onChanged,
    this.isShowError = false,
    this.isMacAddressDuplicated = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = useState('');
    final typeId = useState<int?>(null);
    final duration = useState<int?>(null);
    final macAddress = useState('');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              EquipmentImageDisplayWidget(
                key: key,
                image: image,
                size: const Size(104, 104),
              )
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Row(
                children: [
                  InputText(
                    onChanged: (value) {
                      name.value = value;
                      onChanged({
                        'name': name.value,
                        'typeId': typeId.value,
                        'duration': duration.value,
                        'macAddress': macAddress.value,
                      });
                    },
                    label: 'ชื่ออุปกรณ์',
                    placeHolder: 'ชื่ออุปกรณ์',
                    isError: isShowError && name.value.isEmpty,
                    errorMessage: 'กรุณากรอกค่า',
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     BottomSheetSingleSelectWithAddChoice(
              //       label: 'เลือกหมวดหมู่',
              //       placeHolder: 'เลือกหมวดหมู่',
              //       listChoice: const [
              //         {'displayText': 'ไม่มีหมวดหมู่', 'value': 1},
              //       ],
              //       initialValue: {'displayText': 'ไม่มีหมวดหมู่', 'value': 1},
              //       onChanged: (value) {
              //         typeId.value = value!['value'] as int;
              //         onChanged({
              //           'name': name.value,
              //           'typeId': typeId.value,
              //           'duration': duration.value,
              //           'macAddress': macAddress.value,
              //         });
              //       },
              //       addChoiceText: 'เพิ่มหมวดหมู่',
              //       onAddChoice: (context) {
              //         AutoRouter.of(context).pop();
              //       },
              //     )
              //   ],
              // ),
              Row(
                children: [
                  InputText(
                    onChanged: (value) {
                      final parse = int.tryParse(value);
                      if (parse != null && parse > 0) {
                        duration.value = parse;
                      } else if (value.isEmpty) {
                        duration.value = null;
                      } else {
                        duration.value = -1;
                      }
                      onChanged({
                        'name': name.value,
                        'typeId': typeId.value,
                        'duration': duration.value,
                        'macAddress': macAddress.value,
                      });
                    },
                    label: 'ระยะเวลาการยืม',
                    placeHolder: 'ระยะเวลาการยืม',
                    isError: isShowError &&
                        (duration.value == null || duration.value! <= 0),
                    errorMessage: duration.value == null
                        ? 'กรุณากรอกค่า'
                        : 'กรอกจำนวนเต็มบวกเท่านั้น',
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
              Row(
                children: [
                  BottomSheetSingleSelect(
                    label: 'เลือก Mac address',
                    placeHolder: 'เลือก Mac address',
                    onChanged: (value) {
                      macAddress.value = value!['value'] as String;
                      onChanged({
                        'name': name.value,
                        'typeId': typeId.value,
                        'duration': duration.value,
                        'macAddress': macAddress.value,
                      });
                    },
                    listChoice: macAddresses
                        .map(
                          (e) => {
                            'displayText': e,
                            'value': e,
                          },
                        )
                        .toList(),
                    headerWidget: ListTile(
                      title: Row(
                        children: [
                          Text(
                            'เลือก',
                            style: Theme.of(context).primaryTextTheme.caption,
                          ),
                          Text(
                            ' Mac address ',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          Text(
                            'ให้ตรงกับอุปกรณ์ของคุณ',
                            style: Theme.of(context).primaryTextTheme.caption,
                          )
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.help_outline),
                        onPressed: () {
                          AutoRouter.of(context)
                              .push(const MacAddressHelpRoute());
                        },
                      ),
                    ),
                    isError: isShowError &&
                        (macAddress.value.isEmpty || isMacAddressDuplicated),
                    errorMessage: isMacAddressDuplicated
                        ? 'Mac Address ซ้ำ'
                        : 'กรุณาเลือกค่า',
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     AutoRouter.of(context).push(const QrScanningRoute());
                  //   },
                  //   icon: const Icon(Icons.qr_code_scanner),
                  // )
                  const SizedBox(
                    width: 10,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
