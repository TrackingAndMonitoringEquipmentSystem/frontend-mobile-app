import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/manage_locker_and_equipment/data/datasources/location_rest_api.dart';
import 'package:frontend/features/manage_locker_and_equipment/data/datasources/locker_rest_api.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/dto/save_equipments_request.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/building.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/room.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/type_equipment.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:frontend/features/streaming_and_record/domain/entities/camera.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LockerRepository)
class LockerRepositoryImpl implements LockerRepository {
  final AuthenticationRepository _authenticationRepository;
  final LockerRestApi _lockerRestApi;
  final LocationRestApi _locationRestApi;
  LockerRepositoryImpl(
    this._authenticationRepository,
    this._lockerRestApi,
    this._locationRestApi,
  );

  @override
  Future<Either<RestFailure, List<Locker>>> getAll() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.getAll(token);
    return result.fold((l) => Left(l), (r) {
      final data = r['data'] as List;
      final lockers = data.map<Locker>((e) {
        return Locker.fromJson(e as Map<String, dynamic>);
      });
      return Right(lockers.toList());
    });
  }

  @override
  Future<Either<RestFailure, List<Building>>> getBuildings() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _locationRestApi.getBuildings(token);
    return result.fold((l) => Left(l), (r) {
      final data = r['data'] as List;
      final buildings = data.map<Building>((e) {
        return Building.fromJson(e as Map<String, dynamic>);
      });
      return Right(buildings.toList());
    });
  }

  @override
  Future<Either<RestFailure, Locker>> registerLocker({
    required int id,
    required String name,
    required String description,
    required List<Department> departments,
    required Room room,
  }) async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.registerLocker(
      token: token,
      id: id,
      name: name,
      description: description,
      departmentIds: departments.map((e) => e.id).toList(),
      roomId: room.id,
    );
    return result.fold((l) => Left(l), (r) {
      final locker = Locker.fromJson(r['data'] as Map<String, dynamic>);
      return Right(locker);
    });
  }

  @override
  Future<Either<RestFailure, Map<String, dynamic>>> addEquipment({
    required int id,
  }) async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result =
        await _lockerRestApi.addEquipment(token: token, lockerId: id);
    return result.fold((l) => Left(l), (r) {
      return Right(r['data'] as Map<String, dynamic>);
    });
  }

  @override
  Locker? currentLocker;

  @override
  Future<Either<RestFailure, List<Department>>> getAllByDepartment() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.getAllByDepartment(token: token);
    return result.fold((l) => Left(l), (r) {
      return Right(
        (r['data'] as List)
            .map((e) => Department.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    });
  }

  @override
  Future<Either<RestFailure, List<Locker>>> getLockerByIds(
    List<int> ids,
  ) async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.getLockerByIds(token: token, ids: ids);
    return result.fold((l) => Left(l), (r) {
      return Right(
        (r['data'] as List)
            .map((e) => Locker.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    });
  }

  @override
  Future<Either<RestFailure, dynamic>> saveEquipments(
    SaveEquipmentsRequest saveEquipmentsRequest,
  ) async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.saveEquipments(
      token: token,
      saveEquipmentsRequest: saveEquipmentsRequest,
    );
    print('result: $result');
    return result.fold((l) => Left(l), (r) {
      return Right(r['data']);
    });
  }

  @override
  Future<Either<RestFailure, String>> getOpenToken({
    required int lockerId,
    required bool state,
  }) async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.getOpenToken(
      token: token,
      lockerId: lockerId,
      state: state,
    );
    print('result: $result');
    return result.fold((l) => Left(l), (r) {
      return Right(r['data'] as String);
    });
  }

  @override
  Future<Either<RestFailure, List<Camera>>> listCameraByLockerId({
    required int lockerId,
  }) async {
    final result = await _lockerRestApi.listCameraByLockerId(
      lockerId: lockerId,
    );
    print('result: $result');
    return result.fold((l) => Left(l), (r) {
      return Right(
        (r['data'] as List)
            .map((e) => Camera.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    });
  }

  @override
  Future<Either<RestFailure, List<Locker>>> userViewLockers() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.userViewLockers(
      token: token,
    );
    print('result: $result');
    return result.fold((l) => Left(l), (r) {
      return Right(
        (r['data'] as List)
            .map((e) => Locker.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    });
  }

  @override
  Future<Either<RestFailure, List<TypeEquipment>>> userViewEquipments() async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _lockerRestApi.userViewEquipments(
      token: token,
    );
    print('result: $result');
    return result.fold((l) => Left(l), (r) {
      return Right(
        (r['data'] as List)
            .map((e) => TypeEquipment.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    });
  }
}
