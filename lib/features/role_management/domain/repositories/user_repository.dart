import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<RestFailure, List<UserType>>> getWaitingUsers();
}
