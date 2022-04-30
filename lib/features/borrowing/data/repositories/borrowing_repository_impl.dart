import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/borrowing/data/datasources/borrowing_rest_api.dart';
import 'package:frontend/features/borrowing/domain/borrowing_repository.dart';
import 'package:frontend/features/borrowing/domain/entities/borrowing.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BorrowingRepository)
class BorrowingRepositoryImpl implements BorrowingRepository {
  final BorrowingRestApi _borrowingRestApi;
  final AuthenticationRepository _authenticationRepository;
  BorrowingRepositoryImpl(
    this._borrowingRestApi,
    this._authenticationRepository,
  );
  @override
  Future<Either<RestFailure, List<Borrowing>>> getBorrowGroup(int id) async {
    final token = await _authenticationRepository.getFirebaseUser!.getIdToken();
    final result = await _borrowingRestApi.getBorrowGroup(
      token,
      id,
    );
    return result.fold((l) => Left(l), (r) {
      return Right(
        (r['data'] as List)
            .map((e) => Borrowing.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    });
  }
}
