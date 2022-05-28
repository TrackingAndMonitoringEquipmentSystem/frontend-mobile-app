import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/features/authentication/data/datasources/firebase_sign_in.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/role_management/data/datasources/user_rest_api.dart';
import 'package:frontend/features/role_management/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final FirebaseSignInAuth _firebaseSigInAuth;
  final UserRestApi _userRestApi;
  UserRepositoryImpl(this._firebaseSigInAuth, this._userRestApi);

  @override
  Future<Either<RestFailure, List<UserType>>> getWaitingUsers() async {
    final token = await _firebaseSigInAuth.getCurrentUser()!.getIdToken();
    final result = await _userRestApi.getWaitingUser(token: token);
    return result.fold((l) => Left(l), (r) {
      return Right(
        (r['data'] as List)
            .map((e) => UserType.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    });
  }
}
