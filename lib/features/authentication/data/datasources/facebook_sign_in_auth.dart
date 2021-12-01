import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class FacebookSiginInAuth {
  final FacebookAuth _facebookAuth;

  FacebookSiginInAuth(this._facebookAuth);

  Future<LoginResult> signIn() async {
    return _facebookAuth.login();
  }

  Future<void> signOut() async {
    return _facebookAuth.logOut();
  }
}
