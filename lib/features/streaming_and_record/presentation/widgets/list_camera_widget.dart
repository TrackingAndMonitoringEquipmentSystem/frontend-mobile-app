import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/routes/router.gr.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/features/streaming_and_record/domain/entities/camera.dart';
import 'package:frontend/injection.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';

class ListCameraWidget extends HookWidget {
  final int lockerId;

  const ListCameraWidget({Key? key, required this.lockerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameras = useState(<Camera>[]);
    final isLoading = useState(true);
    final lockerRepository = getIt<LockerRepository>();
    useEffect(
      () {
        Future<void>.microtask(() async {
          isLoading.value = true;
          final result =
              await lockerRepository.listCameraByLockerId(lockerId: lockerId);
          isLoading.value = false;
          result.fold(
              (l) => handleErrorCase(context, l), (r) => cameras.value = r);
        });
        return null;
      },
      [],
    );
    return LoadingOverlayPro(
      isLoading: isLoading.value,
      progressIndicator: const CircularProgressIndicator(),
      child: ListView.builder(
        itemCount: cameras.value.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cameras.value[index].name),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              AutoRouter.of(context).push(
                LiveCameraRoute(
                  camera: cameras.value[index],
                  index: index,
                  lockerId: lockerId,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
