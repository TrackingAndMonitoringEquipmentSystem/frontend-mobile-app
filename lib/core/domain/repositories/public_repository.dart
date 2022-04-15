import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/public_failure.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';

abstract class PublicRepository {
  Future<Either<RestFailure, List<Department>>> getDepartments();
}
