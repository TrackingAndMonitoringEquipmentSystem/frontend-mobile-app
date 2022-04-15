import 'package:dartz/dartz.dart';
import 'package:frontend/core/data/data_sources/rest_api.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/manage_locker_and_equipment/data/datasources/locker_rest_api.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LockerRepository)
class LockerRepositoryImpl implements LockerRepository {
  final AuthenticationRepository _authenticationRepository;
  final LockerRestApi _lockerRestApi;
  LockerRepositoryImpl(
    this._authenticationRepository,
    this._lockerRestApi,
  );

  @override
  Future<Either<RestFailure, List<Locker>>> getLockersByDepartment(
    int departmentId,
  ) {
    // TODO: implement getLockerByDepartment
    throw UnimplementedError();
  }

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
}
