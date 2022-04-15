// ignore: file_names
import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';

abstract class LockerRepository {
  Future<Either<RestFailure, List<Locker>>> getLockersByDepartment(
    int departmentId,
  );

  Future<Either<RestFailure, List<Locker>>> getAll();
}
