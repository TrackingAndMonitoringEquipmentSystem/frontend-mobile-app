import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:frontend/features/authentication/data/datasources/firebase_user_mapper.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseSignInAuth {
  final FirebaseAuth _firebaseAuth;

  FirebaseSignInAuth(this._firebaseAuth);

  Future<Either<AuthenticationFailure, Unit>> createUserWithEmailAndPassword(
    String emailAddress,
    String password,
  ) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthenticationFailure.emailAlreadyInUse());
      } else {
        return left(const AuthenticationFailure.serverError());
      }
    }
  }

  Future<Either<AuthenticationFailure, Unit>> signInWithEmailAndPassword(
    String emailAddress,
    String password,
  ) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(
          const AuthenticationFailure.invalidEmailAndPasswordCombination(),
        );
      } else {
        return left(const AuthenticationFailure.serverError());
      }
    }
  }

  Future<UserCredential> signInWithCredential(
    AuthCredential authCredential,
  ) async {
    return _firebaseAuth.signInWithCredential(authCredential);
  }

  Future<UserType?> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      final userInfo = user.providerData[0];
      return user.toDomain();
    } else {
      return null;
    }
  }

  Future<void> signOut() async {
    _firebaseAuth.signOut();
  }

  Future<void> verifyOtpCode({
    required TelNo telNo,
    required Function(PhoneAuthCredential) onVerificationCompleted,
    required void Function(FirebaseAuthException) onVerificationFailed,
    required void Function(String, int?) onCodeSent,
    required void Function(String) onCodeAutoRetrievalTimeout,
  }) {
    return _firebaseAuth.verifyPhoneNumber(
      phoneNumber: telNo.toInternationalTelNo(),
      verificationCompleted: onVerificationCompleted,
      verificationFailed: onVerificationFailed,
      codeSent: onCodeSent,
      codeAutoRetrievalTimeout: onCodeAutoRetrievalTimeout,
    );
  }
}
