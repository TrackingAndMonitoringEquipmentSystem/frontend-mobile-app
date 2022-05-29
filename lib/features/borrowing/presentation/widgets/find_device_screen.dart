import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/features/borrowing/presentation/widgets/render_lockers.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class FindDevicesScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    useEffect(
      () {
        Future<void>.microtask(() async {
          isLoading.value = true;
          await FlutterBluePlus.instance
              .startScan(timeout: const Duration(seconds: 4));
          isLoading.value = false;
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
            'เปิดตู้ล็อคเกอร์',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: RefreshIndicator(
          onRefresh: () => FlutterBluePlus.instance
              .startScan(timeout: const Duration(seconds: 4)),
          child: StreamBuilder<List<ScanResult>>(
              stream: FlutterBluePlus.instance.scanResults,
              initialData: const [],
              builder: (c, snapshot) {
                if (snapshot.data!.isNotEmpty) {
                  final devices = snapshot.data!
                      .where(
                        (element) =>
                            element.device.name.contains('toollo-locker'),
                      )
                      .map((e) => e.device)
                      .toList();

                  final lockerIds = devices
                      .map(
                        (element) => int.parse(element.name.split('-')[2]),
                      )
                      .toList();

                  if (!isLoading.value && devices.isNotEmpty) {
                    return RenderLockers(
                      lockerIds: lockerIds,
                      devices: devices,
                    );
                  } else {
                    return const Center(
                      child: Text('ไม่พบอุปกรณ์'),
                    );
                  }
                } else {
                  return const Center(
                    child: Text('ไม่พบอุปกรณ์กรุณาลองใหม่อีกครั้ง'),
                  );
                }
              }),
        ),
        floatingActionButton: StreamBuilder<bool>(
          stream: FlutterBluePlus.instance.isScanning,
          initialData: false,
          builder: (c, snapshot) {
            if (snapshot.data!) {
              return FloatingActionButton(
                onPressed: () => FlutterBluePlus.instance.stopScan(),
                backgroundColor: Colors.red,
                child: const Icon(Icons.stop),
              );
            } else {
              return FloatingActionButton(
                child: const Icon(Icons.search),
                onPressed: () async {
                  isLoading.value = true;
                  await FlutterBluePlus.instance
                      .startScan(timeout: const Duration(seconds: 4));
                  isLoading.value = false;
                },
              );
            }
          },
        ),
      ),
    );
  }
}
