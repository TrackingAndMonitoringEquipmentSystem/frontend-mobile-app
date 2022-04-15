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
import 'package:twitter_login/twitter_login.dart' as _i14;

import 'core/data/data_sources/rest_api.dart' as _i13;
import 'core/data/repositories/public_repository_impl.dart' as _i21;
import 'core/domain/repositories/public_repository.dart' as _i20;
import 'core/injection/injectable_module.dart' as _i32;
import 'features/authentication/data/datasources/auth_rest_api.dart' as _i3;
import 'features/authentication/data/datasources/facebook_sign_in_auth.dart'
    as _i5;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i8;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i10;
import 'features/authentication/data/datasources/twitter_sign_in_auth.dart'
    as _i15;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i17;
import 'features/authentication/domain/entities/pre_register_user.dart' as _i12;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i16;
import 'features/authentication/presentation/bloc/authen/authen_bloc.dart'
    as _i30;
import 'features/authentication/presentation/bloc/register_enter_email/register_enter_email_bloc.dart'
    as _i22;
import 'features/authentication/presentation/bloc/register_enter_name/register_enter_name_bloc.dart'
    as _i23;
import 'features/authentication/presentation/bloc/register_enter_otp/register_enter_otp_bloc.dart'
    as _i24;
import 'features/authentication/presentation/bloc/register_enter_phone_number/register_enter_phone_number_bloc.dart'
    as _i26;
import 'features/authentication/presentation/bloc/register_enter_role/register_enter_role_bloc.dart'
    as _i27;
import 'features/authentication/presentation/bloc/register_password/register_enter_password_bloc.dart'
    as _i25;
import 'features/authentication/presentation/bloc/register_verify_email/register_verify_email_bloc.dart'
    as _i28;
import 'features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i29;
import 'features/manage_locker_and_equipment/data/datasources/locker_rest_api.dart'
    as _i11;
import 'features/manage_locker_and_equipment/data/repositories/locker-repository-impl.dart'
    as _i19;
import 'features/manage_locker_and_equipment/domain/locker-repository.dart'
    as _i18;
import 'features/manage_locker_and_equipment/presentation/bloc/locker/locker_bloc.dart'
    as _i31; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i11.LockerRestApi>(() => _i11.LockerRestApi());
  gh.lazySingleton<_i12.PreRegisterUser>(
      () => firebaseInjectableModule.preRegisterUser);
  gh.factory<_i13.RestApi>(() => _i13.RestApi());
  gh.lazySingleton<_i14.TwitterLogin>(
      () => firebaseInjectableModule.twitterSignIn);
  gh.factory<_i15.TwitterSignInAuth>(
      () => _i15.TwitterSignInAuth(get<_i14.TwitterLogin>()));
  gh.lazySingleton<_i16.AuthenticationRepository>(() =>
      _i17.AuthenticationRepositoryImpl(
          get<_i8.FirebaseSignInAuth>(),
          get<_i10.GoogleSignInAuth>(),
          get<_i5.FacebookSignInAuth>(),
          get<_i15.TwitterSignInAuth>(),
          get<_i12.PreRegisterUser>(),
          get<_i3.AuthRestApi>(),
          get<_i7.FirebaseMessaging>()));
  gh.lazySingleton<_i18.LockerRepository>(() => _i19.LockerRepositoryImpl(
      get<_i16.AuthenticationRepository>(), get<_i11.LockerRestApi>()));
  gh.lazySingleton<_i20.PublicRepository>(
      () => _i21.PublicRepositoryImpl(get<_i13.RestApi>()));
  gh.factory<_i22.RegisterEnterEmailBloc>(
      () => _i22.RegisterEnterEmailBloc(get<_i16.AuthenticationRepository>()));
  gh.factory<_i23.RegisterEnterNameBloc>(
      () => _i23.RegisterEnterNameBloc(get<_i16.AuthenticationRepository>()));
  gh.factory<_i24.RegisterEnterOtpBloc>(
      () => _i24.RegisterEnterOtpBloc(get<_i16.AuthenticationRepository>()));
  gh.factory<_i25.RegisterEnterPasswordBloc>(() =>
      _i25.RegisterEnterPasswordBloc(get<_i16.AuthenticationRepository>()));
  gh.factory<_i26.RegisterEnterPhoneNumberBloc>(() =>
      _i26.RegisterEnterPhoneNumberBloc(get<_i16.AuthenticationRepository>()));
  gh.factory<_i27.RegisterEnterRoleBloc>(() => _i27.RegisterEnterRoleBloc(
      get<_i16.AuthenticationRepository>(), get<_i20.PublicRepository>()));
  gh.factory<_i28.RegisterVerifyEmailBloc>(
      () => _i28.RegisterVerifyEmailBloc(get<_i16.AuthenticationRepository>()));
  gh.factory<_i29.SignInFormBloc>(
      () => _i29.SignInFormBloc(get<_i16.AuthenticationRepository>()));
  gh.factory<_i30.AuthenBloc>(
      () => _i30.AuthenBloc(get<_i16.AuthenticationRepository>()));
  gh.factory<_i31.LockerBloc>(
      () => _i31.LockerBloc(get<_i18.LockerRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i32.FirebaseInjectableModule {}
