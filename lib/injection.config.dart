// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:twitter_login/twitter_login.dart' as _i10;

import 'core/injection/injectable_module.dart' as _i19;
import 'features/authentication/data/datasources/facebook_sign_in_auth.dart'
    as _i4;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i6;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i8;
import 'features/authentication/data/datasources/twitter_sign_in_auth.dart'
    as _i11;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i13;
import 'features/authentication/domain/entities/pre_register_user.dart' as _i9;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i12;
import 'features/authentication/presentation/bloc/authen/authen_bloc.dart'
    as _i18;
import 'features/authentication/presentation/bloc/register_enter_name/register_enter_name_bloc.dart'
    as _i14;
import 'features/authentication/presentation/bloc/register_enter_otp/register_enter_otp_bloc.dart'
    as _i15;
import 'features/authentication/presentation/bloc/register_enter_phone_number/register_enter_phone_number_bloc.dart'
    as _i16;
import 'features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FacebookAuth>(
      () => firebaseInjectableModule.facebookSignIn);
  gh.factory<_i4.FacebookSignInAuth>(
      () => _i4.FacebookSignInAuth(get<_i3.FacebookAuth>()));
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i6.FirebaseSignInAuth>(
      () => _i6.FirebaseSignInAuth(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i8.GoogleSignInAuth>(
      () => _i8.GoogleSignInAuth(get<_i7.GoogleSignIn>()));
  gh.lazySingleton<_i9.PreRegisterUser>(
      () => firebaseInjectableModule.preRegisterUser);
  gh.lazySingleton<_i10.TwitterLogin>(
      () => firebaseInjectableModule.twitterSignIn);
  gh.factory<_i11.TwitterSignInAuth>(
      () => _i11.TwitterSignInAuth(get<_i10.TwitterLogin>()));
  gh.lazySingleton<_i12.AuthenticationRepository>(() =>
      _i13.AuthenticationRepositoryImpl(
          get<_i6.FirebaseSignInAuth>(),
          get<_i8.GoogleSignInAuth>(),
          get<_i4.FacebookSignInAuth>(),
          get<_i11.TwitterSignInAuth>(),
          get<_i9.PreRegisterUser>()));
  gh.factory<_i14.RegisterEnterNameBloc>(
      () => _i14.RegisterEnterNameBloc(get<_i12.AuthenticationRepository>()));
  gh.factory<_i15.RegisterEnterOtpBloc>(
      () => _i15.RegisterEnterOtpBloc(get<_i12.AuthenticationRepository>()));
  gh.factory<_i16.RegisterEnterPhoneNumberBloc>(() =>
      _i16.RegisterEnterPhoneNumberBloc(get<_i12.AuthenticationRepository>()));
  gh.factory<_i17.SignInFormBloc>(
      () => _i17.SignInFormBloc(get<_i12.AuthenticationRepository>()));
  gh.factory<_i18.AuthenBloc>(
      () => _i18.AuthenBloc(get<_i12.AuthenticationRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i19.FirebaseInjectableModule {}
