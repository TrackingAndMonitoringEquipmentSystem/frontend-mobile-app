import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:frontend/core/value_objects/value_objects.dart';
import 'package:frontend/features/authentication/data/datasources/firebase_sign_in.dart';
import 'package:frontend/features/authentication/data/datasources/google_sign_in_auth.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';
import '../datasources/firebase_user_mapper.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final FirebaseSignInAuth _firebaseSigInAuth;
  final GoogleSignInAuth _googleSignInAuth;

  AuthenticationRepositoryImpl(this._firebaseSigInAuth, this._googleSignInAuth);
  @override
  Future<Either<AuthenticatonFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    return _firebaseSigInAuth.createUserWithEmailAndPassword(
      emailAddressStr,
      passwordStr,
    );
  }

  @override
  Future<Either<AuthenticatonFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    return _firebaseSigInAuth.signInWithEmailAndPassword(
      emailAddressStr,
      passwordStr,
    );
  }

  @override
  Future<Either<AuthenticatonFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignInAuth.signIn();
      if (googleUser == null) {
        return left(const AuthenticatonFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );
      await _firebaseSigInAuth.signInWithCredential(authCredential);
      return right(unit);
    } on PlatformException catch (error) {
      print('Error :');
      print(error);
      return left(const AuthenticatonFailure.serverError());
    }
  }

  @override
  Future<UserType?> getSignedInUser() {
    return _firebaseSigInAuth.getCurrentUser();
  }

  @override
  Future<void> signOut() => Future.wait([
        _firebaseSigInAuth.signOut(),
        _googleSignInAuth.signOut(),
      ]);
}