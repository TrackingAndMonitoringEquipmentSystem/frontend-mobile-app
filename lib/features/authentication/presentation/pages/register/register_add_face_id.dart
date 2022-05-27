import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/injection.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class RegisterAddFaceIdPage extends HookWidget {
  const RegisterAddFaceIdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ValueNotifier<Uint8List?> imageData = useState(null);
    final isLoading = useState(false);

    return LoadingOverlayPro(
      isLoading: isLoading.value,
      progressIndicator: const CircularProgressIndicator(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Add Face ID',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
            screenSize.width * 0.1,
            screenSize.height * 0.05,
            screenSize.width * 0.1,
            0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/authentication_feature/face_recognition.png',
                      height: 100,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Selfie for',
                    style: Theme.of(context).primaryTextTheme.headline1,
                  ),
                  Text(
                    'Face ID',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ถ่ายรูปใบหน้าของคุณ',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'เพิ่มใช้แสกนหน้าในการเปิดตู้อุปกรณ์',
                    style: Theme.of(context).primaryTextTheme.caption,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      final ImagePicker _picker = ImagePicker();
                      final XFile? image =
                          await _picker.pickImage(source: ImageSource.camera);
                      if (image != null) {
                        isLoading.value = true;
                        final byteImages = await image.readAsBytes();
                        imageData.value = await compressImage(
                          byteImages,
                        );
                        isLoading.value = false;
                      }
                    },
                    child: imageData.value != null
                        ? Image.memory(
                            imageData.value!,
                            fit: BoxFit.cover,
                            height: 200,
                            width: 200,
                          )
                        : Image.asset(
                            'assets/images/authentication_feature/face_id_placeholder.png',
                            height: 200,
                            width: 200,
                          ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    'เพิ่ม Face ID',
                    onPressed: () async {
                      if (imageData.value != null) {
                        isLoading.value = true;
                        final base64String =
                            base64Encode(imageData.value!.toList());
                        final result = await getIt<AuthenticationRepository>()
                            .addFaceId(base64String);
                        isLoading.value = false;
                        result.fold(
                          (l) => handleErrorCase(context, l),
                          (r) => AutoRouter.of(context)
                              .replaceAll([const RegisterCompletedRoute()]),
                        );
                      } else {
                        FlushbarHelper.createError(
                                message: 'กรุณาถ่ายรูปใบหน้าของคุณ')
                            .show(context);
                      }
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Uint8List> compressImage(Uint8List list) async {
    var result = await FlutterImageCompress.compressWithList(
      list,
      minHeight: 1920,
      minWidth: 1080,
      quality: 50,
    );
    print(list.length);
    print(result.length);
    return result;
  }
}
