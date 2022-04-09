import 'package:dartz/dartz.dart';
import 'package:frontend/core/data/data_sources/rest_api.dart';
import 'package:frontend/core/domain/repositories/public_failure.dart';
import 'package:frontend/core/domain/repositories/public_repository.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PublicRepository)
class PublicRepositoryImpl implements PublicRepository {
  final RestApi _restApi;

  PublicRepositoryImpl(this._restApi);
  @override
  Future<Either<PublicFailure, List<Department>>> getDepartments() async {
    final departments = <Department>[];
    final response = await _restApi.getDepartments();
    response.fold(
      (l) => print(l),
      (r) => print(r),
    );
    return Right(departments);
  }
}
