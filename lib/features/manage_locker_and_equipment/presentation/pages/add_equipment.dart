import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_form_widget.dart';
import 'package:frontend/injection.dart';
import 'package:image/image.dart' as image_helper;
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class AddEquipmentPage extends HookWidget {
  final int lockerId;
  final Map<String, dynamic> scanResult;

  const AddEquipmentPage({
    Key? key,
    required this.scanResult,
    required this.lockerId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLoading = useState(false);
    final lockerRepository = getIt<LockerRepository>();
    final ValueNotifier<RestFailure?> failure = useState(null);
    final List<Widget> objects = getObjectImage(scanResult['objects'] as List);
    print('scanResult["uuid"]: ${scanResult["uuid"]}');
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
          title: const Text(
            'เพิ่มอุปกรณ์',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: objects.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: EquipmentFormWidget(
                id: index,
                image: objects[index],
                macAddresses:
                    List<String>.from(scanResult['macAddresses'] as List),
              ),
            );
          },
        ),
        bottomNavigationBar: SizedBox(
          height: screenSize.height * 0.2,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('ตรวจพบทั้งหมด'),
                    Text(
                      '${(scanResult['macAddresses'] as List).length} อุปกรณ์',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    ButtonOutlineWidget(
                      'ลองอีกครั้ง',
                      onPressed: () async {
                        AutoRouter.of(context)
                            .navigate(AddingEquipmentRoute(lockerId: lockerId));
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    if ((scanResult['macAddresses'] as List).isNotEmpty)
                      const Button(
                        'บันทึก',
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getObjectImage(List objects) {
    final List<Widget> widgets = [];

    objects.forEach((object) {
      final objectMap = object as Map<String, dynamic>;
      final bytes = base64Decode(objectMap['image'] as String);
      final image = image_helper.decodeJpg(bytes);

      final objectClips =
          List<Map<String, dynamic>>.from(objectMap['detectedObjects'] as List);

      print('objectMap["imageSize"]: ${objectMap['imageSize']}');

      objectClips.forEach((element) {
        final cropImage = image_helper.copyCrop(
          image!,
          element['x'] as int,
          element['y'] as int,
          element['w'] as int,
          element['h'] as int,
        );
        final byteImage = image_helper.encodeJpg(cropImage);
        final imageWidget = Image.memory(Uint8List.fromList(byteImage));
        widgets.add(imageWidget);
      });
    });
    return widgets;
  }
}
