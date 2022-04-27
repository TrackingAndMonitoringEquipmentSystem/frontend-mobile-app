import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/dto/save_equipments_request.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/features/manage_locker_and_equipment/presentation/widgets/equipment_form_widget.dart';
import 'package:frontend/injection.dart';
import 'package:image/image.dart' as image_helper;
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class AddEquipmentPage extends HookWidget {
  final int lockerId;
  final Map<String, dynamic>? scanResult;
  final bool? isError;
  const AddEquipmentPage({
    Key? key,
    this.scanResult,
    required this.lockerId,
    this.isError,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isLoading = useState(false);
    final lockerRepository = getIt<LockerRepository>();
    final ValueNotifier<RestFailure?> failure = useState(null);
    final base64images = useState(<String>[]);
    final List<Widget> objects = scanResult != null
        ? getObjectImage(scanResult!['objects'] as List, base64images)
        : [];
    final initialForm = scanResult != null
        ? List<Map<String, dynamic>>.generate(
            (scanResult!['objects'] as List).length,
            (index) => <String, dynamic>{},
          )
        : <Map<String, dynamic>>[];
    final listFormData = useState(initialForm);
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
        body: isError != null
            ? const Center(child: Text('เกิดข้อผิดพลาด'))
            : ListView.builder(
                itemCount: objects.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: EquipmentFormWidget(
                      id: index,
                      image: objects[index],
                      macAddresses: List<String>.from(
                        scanResult!['macAddresses'] as List,
                      ),
                      onChanged: (data) {
                        listFormData.value[index] = data;
                      },
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
                      '${(scanResult != null ? scanResult!['macAddresses'] as List : []).length} อุปกรณ์',
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
                    if (isError == null)
                      Button(
                        'บันทึก',
                        onPressed: () async {
                          final List<EquipmentRequest> equipments = [];
                          for(final formData in listFormData.value) {
                            equipments.add(EquipmentRequest(name, typeId, duration, macAddress, base64Image));
                          }

                          final saveEquipmentsRequest = SaveEquipmentsRequest(scanResult!['uuid'] as String, lockerId, equipments)

                        },
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

  List<Widget> getObjectImage(
    List objects,
    ValueNotifier<List<String>> base64images,
  ) {
    final List<Widget> widgets = [];

    objects.forEach((object) {
      final objectMap = object as Map<String, dynamic>;
      final bytes = base64Decode(objectMap['image'] as String);
      final image = image_helper.decodeJpg(bytes);

      final objectClips =
          List<Map<String, dynamic>>.from(objectMap['detectedObjects'] as List);

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
        base64images.value.add(base64Encode(byteImage));
        widgets.add(
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: imageWidget,
          ),
        );
      });
    });
    return widgets;
  }
}
