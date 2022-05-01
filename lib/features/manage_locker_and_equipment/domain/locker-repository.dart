// ignore: file_names
import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/dto/save_equipments_request.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/building.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/room.dart';
import 'package:frontend/features/streaming_and_record/domain/entities/camera.dart';

abstract class LockerRepository {
  Future<Either<RestFailure, List<Locker>>> getAll();

  Future<Either<RestFailure, List<Building>>> getBuildings();

  Future<Either<RestFailure, Locker>> registerLocker({
    required int id,
    required String name,
    required String description,
    required List<Department> departments,
    required Room room,
  });
  Future<Either<RestFailure, Map<String, dynamic>>> addEquipment({
    required int id,
  });

  set currentLocker(Locker? preRegisterUser);
  Future<Either<RestFailure, List<Department>>> getAllByDepartment();

  Locker? get currentLocker;

  Future<Either<RestFailure, List<Locker>>> getLockerByIds(List<int> ids);

  Future<Either<RestFailure, dynamic>> saveEquipments(
    SaveEquipmentsRequest saveEquipmentsRequest,
  );

  Future<Either<RestFailure, String>> getOpenToken({
    required int lockerId,
    required bool state,
  });

  Future<Either<RestFailure, List<Camera>>> listCameraByLockerId({
    required int lockerId,
  });
}
