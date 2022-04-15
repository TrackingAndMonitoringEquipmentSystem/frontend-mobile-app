// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_messaging/firebase_messaging.dart' as _i7;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:twitter_login/twitter_login.dart' as _i13;

import 'core/data/data_sources/rest_api.dart' as _i12;
import 'core/data/repositories/public_repository_impl.dart' as _i18;
import 'core/domain/repositories/public_repository.dart' as _i17;
import 'core/injection/injectable_module.dart' as _i28;
import 'features/authentication/data/datasources/auth_rest_api.dart' as _i3;
import 'features/authentication/data/datasources/facebook_sign_in_auth.dart'
    as _i5;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i8;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i10;
import 'features/authentication/data/datasources/twitter_sign_in_auth.dart'
    as _i14;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i16;
import 'features/authentication/domain/entities/pre_register_user.dart' as _i11;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i15;
import 'features/authentication/presentation/bloc/authen/authen_bloc.dart'
    as _i27;
import 'features/authentication/presentation/bloc/register_enter_email/register_enter_email_bloc.dart'
    as _i19;
import 'features/authentication/presentation/bloc/register_enter_name/register_enter_name_bloc.dart'
    as _i20;
import 'features/authentication/presentation/bloc/register_enter_otp/register_enter_otp_bloc.dart'
    as _i21;
import 'features/authentication/presentation/bloc/register_enter_phone_number/register_enter_phone_number_bloc.dart'
    as _i23;
import 'features/authentication/presentation/bloc/register_enter_role/register_enter_role_bloc.dart'
    as _i24;
import 'features/authentication/presentation/bloc/register_password/register_enter_password_bloc.dart'
    as _i22;
import 'features/authentication/presentation/bloc/register_verify_email/register_verify_email_bloc.dart'
    as _i25;
import 'features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AuthRestApi>(() => _i3.AuthRestApi());
  gh.lazySingleton<_i4.FacebookAuth>(
      () => firebaseInjectableModule.facebookSignIn);
  gh.factory<_i5.FacebookSignInAuth>(
      () => _i5.FacebookSignInAuth(get<_i4.FacebookAuth>()));
  gh.lazySingleton<_i6.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessage);
  gh.factory<_i8.FirebaseSignInAuth>(
      () => _i8.FirebaseSignInAuth(get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i9.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i10.GoogleSignInAuth>(
      () => _i10.GoogleSignInAuth(get<_i9.GoogleSignIn>()));
  gh.lazySingleton<_i11.PreRegisterUser>(
      () => firebaseInjectableModule.preRegisterUser);
  gh.factory<_i12.RestApi>(() => _i12.RestApi());
  gh.lazySingleton<_i13.TwitterLogin>(
      () => firebaseInjectableModule.twitterSignIn);
  gh.factory<_i14.TwitterSignInAuth>(
      () => _i14.TwitterSignInAuth(get<_i13.TwitterLogin>()));
  gh.lazySingleton<_i15.AuthenticationRepository>(() =>
      _i16.AuthenticationRepositoryImpl(
          get<_i8.FirebaseSignInAuth>(),
          get<_i10.GoogleSignInAuth>(),
          get<_i5.FacebookSignInAuth>(),
          get<_i14.TwitterSignInAuth>(),
          get<_i11.PreRegisterUser>(),
          get<_i3.AuthRestApi>(),
          get<_i7.FirebaseMessaging>()));
  gh.lazySingleton<_i17.PublicRepository>(
      () => _i18.PublicRepositoryImpl(get<_i12.RestApi>()));
  gh.factory<_i19.RegisterEnterEmailBloc>(
      () => _i19.RegisterEnterEmailBloc(get<_i15.AuthenticationRepository>()));
  gh.factory<_i20.RegisterEnterNameBloc>(
      () => _i20.RegisterEnterNameBloc(get<_i15.AuthenticationRepository>()));
  gh.factory<_i21.RegisterEnterOtpBloc>(
      () => _i21.RegisterEnterOtpBloc(get<_i15.AuthenticationRepository>()));
  gh.factory<_i22.RegisterEnterPasswordBloc>(() =>
      _i22.RegisterEnterPasswordBloc(get<_i15.AuthenticationRepository>()));
  gh.factory<_i23.RegisterEnterPhoneNumberBloc>(() =>
      _i23.RegisterEnterPhoneNumberBloc(get<_i15.AuthenticationRepository>()));
  gh.factory<_i24.RegisterEnterRoleBloc>(() => _i24.RegisterEnterRoleBloc(
      get<_i15.AuthenticationRepository>(), get<_i17.PublicRepository>()));
  gh.factory<_i25.RegisterVerifyEmailBloc>(
      () => _i25.RegisterVerifyEmailBloc(get<_i15.AuthenticationRepository>()));
  gh.factory<_i26.SignInFormBloc>(
      () => _i26.SignInFormBloc(get<_i15.AuthenticationRepository>()));
  gh.factory<_i27.AuthenBloc>(
      () => _i27.AuthenBloc(get<_i15.AuthenticationRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i28.FirebaseInjectableModule {}
