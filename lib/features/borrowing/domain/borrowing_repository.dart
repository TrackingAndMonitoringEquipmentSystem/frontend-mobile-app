import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/features/borrowing/domain/entities/borrowing.dart';

abstract class BorrowingRepository {
  Future<Either<RestFailure, List<Borrowing>>> getBorrowGroup(int id);
}
