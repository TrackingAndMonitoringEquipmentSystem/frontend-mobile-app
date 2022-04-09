import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/authentication/domain/entities/user.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';

extension FirebaseUserDomain on User {
  UserType toDomain() {
    return UserType(
      uid: uid,
      email: '',
      providerId: '',
      createdAt: DateTime.now(),
      faceIdUrl: '',
      firstName: '',
      gender: Gender.female,
      id: 0,
      lastName: '',
      profilePicUrl: '',
      tel: '',
      updatedAt: DateTime.now(),
    );
  }
}
