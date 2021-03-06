import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_number_picker.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select_with_add_choice.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_info_widget.dart';

class EditEquipmentWidget extends HookWidget {
  const EditEquipmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  'assets/images/manage_locker_and_equipment/hammer_image.png',
                  fit: BoxFit.fill,
                  width: 72.47,
                  height: 80,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  showModalBottomSheet<dynamic>(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return const EquipmentInfoWidget();
                    },
                  );
                },
                child: Text(
                  '???????????????????????????????????????????????????',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              InputText(
                onChanged: (value) {},
                label: '?????????????????????????????????',
                placeHolder: '?????????????????????????????????',
              ),
            ],
          ),
          Row(
            children: [
              BottomSheetSingleSelectWithAddChoice(
                label: '???????????????????????????????????????',
                placeHolder: '???????????????????????????????????????',
                listChoice: const [
                  {'displayText': '???????????????????????????????????????', 'value': 1},
                ],
                initialValue: {'displayText': '???????????????????????????????????????', 'value': 1},
                onChanged: (value) {},
                addChoiceText: '???????????????????????????????????????',
                onAddChoice: (context) {
                  AutoRouter.of(context).pop();
                },
              )
            ],
          ),
          Row(
            children: [
              BottomSheetNumberPicker(
                label: '?????????????????????????????????????????????????????????',
                placeHolder: '?????????????????????????????????????????????????????????',
                onChanged: (value) {},
                min: 1,
                max: 9,
              )
            ],
          ),
          Row(
            children: [
              BottomSheetSingleSelect(
                label: '??????????????? Mac address',
                placeHolder: '??????????????? Mac address',
                onChanged: (value) {},
                listChoice: const [
                  {
                    'displayText': 'C1-11-FE-FF-FF-FF',
                    'value': 'C1-11-FE-FF-FF-FF'
                  },
                ],
                headerWidget: ListTile(
                  title: Row(
                    children: [
                      Text(
                        '???????????????',
                        style: Theme.of(context).primaryTextTheme.caption,
                      ),
                      Text(
                        ' Mac address ',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyText1!
                            .copyWith(
                                color: Theme.of(context).colorScheme.secondary),
                      ),
                      Text(
                        '??????????????????????????????????????????????????????????????????',
                        style: Theme.of(context).primaryTextTheme.caption,
                      )
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.help_outline),
                    onPressed: () {
                      AutoRouter.of(context).push(const MacAddressHelpRoute());
                    },
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  AutoRouter.of(context).push(const QrScanningRoute());
                },
                icon: const Icon(Icons.qr_code_scanner),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                '??????????????????',
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  '???????????????????????????',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .headline2!
                      .copyWith(color: Theme.of(context).colorScheme.error),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
