import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

enum ButtonState {
  locked,
  lockedPushed,
  unlocked,
  unlockedPushed,
}

class ToggleLockerPage extends HookWidget {
  final Locker locker;
  final BluetoothDevice device;
  const ToggleLockerPage({
    Key? key,
    required this.locker,
    required this.device,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ValueNotifier<ButtonState> buttonState = useState(ButtonState.locked);
    final isLoading = useState(false);
    final lockerRepository = getIt<LockerRepository>();
    return LoadingOverlayPro(
      progressIndicator: const CircularProgressIndicator(),
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
            IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline))
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.05,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset(
                        'assets/images/borrowing/logo_water_mark.png',
                      ).image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      screenSize.width * 0.2,
                      screenSize.height * 0.05,
                      screenSize.width * 0.1,
                      0,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    if (buttonState.value == ButtonState.locked ||
                        buttonState.value == ButtonState.lockedPushed) {
                      isLoading.value = true;
                      final result = await lockerRepository.getOpenToken(
                        lockerId: locker.id,
                        state: true,
                      );
                      isLoading.value = false;
                      result.fold(
                        (l) => handleErrorCase(context, l),
                        (r) => buttonState.value = ButtonState.unlocked,
                      );
                    } else {
                      isLoading.value = true;
                      final result = await lockerRepository.getOpenToken(
                        lockerId: locker.id,
                        state: false,
                      );
                      isLoading.value = false;
                      result.fold(
                        (l) => handleErrorCase(context, l),
                        (r) => buttonState.value = ButtonState.locked,
                      );
                    }
                  },
                  onTapDown: (tabDownDetail) {
                    if (buttonState.value == ButtonState.locked ||
                        buttonState.value == ButtonState.lockedPushed) {
                      buttonState.value = ButtonState.lockedPushed;
                    } else {
                      buttonState.value = ButtonState.unlockedPushed;
                    }
                  },
                  child: Image.asset(
                    computedAssetName(buttonState.value),
                    width: 200,
                    height: 200,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'กดเพื่อ',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      buttonState.value == ButtonState.locked ||
                              buttonState.value == ButtonState.lockedPushed
                          ? 'ปลดล็อค'
                          : 'ล็อค',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyText1!
                          .copyWith(
                              color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ตู้ล็อกเกอร์',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  String computedAssetName(ButtonState buttonState) {
    if (buttonState == ButtonState.locked) {
      return 'assets/icons/borrowing/locked_icon.png';
    } else if (buttonState == ButtonState.lockedPushed) {
      return 'assets/icons/borrowing/locked_pushed_icon.png';
    } else if (buttonState == ButtonState.unlocked) {
      return 'assets/icons/borrowing/unlocked_icon.png';
    } else {
      return 'assets/icons/borrowing/unlocked_pushed_icon.png';
    }
  }

  Future<List<BluetoothService>> getServices(BluetoothDevice device) async {
    return device.discoverServices();
  }
}
