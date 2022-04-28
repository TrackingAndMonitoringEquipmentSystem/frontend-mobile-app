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
import 'package:twitter_login/twitter_login.dart' as _i15;

import 'core/data/data_sources/rest_api.dart' as _i14;
import 'core/data/repositories/public_repository_impl.dart' as _i22;
import 'core/domain/repositories/public_repository.dart' as _i21;
import 'core/injection/injectable_module.dart' as _i32;
import 'features/authentication/data/datasources/auth_rest_api.dart' as _i3;
import 'features/authentication/data/datasources/facebook_sign_in_auth.dart'
    as _i5;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i8;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i10;
import 'features/authentication/data/datasources/twitter_sign_in_auth.dart'
    as _i16;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i18;
import 'features/authentication/domain/entities/pre_register_user.dart' as _i13;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i17;
import 'features/authentication/presentation/bloc/register_enter_email/register_enter_email_bloc.dart'
    as _i23;
import 'features/authentication/presentation/bloc/register_enter_name/register_enter_name_bloc.dart'
    as _i24;
import 'features/authentication/presentation/bloc/register_enter_otp/register_enter_otp_bloc.dart'
    as _i25;
import 'features/authentication/presentation/bloc/register_enter_phone_number/register_enter_phone_number_bloc.dart'
    as _i27;
import 'features/authentication/presentation/bloc/register_enter_role/register_enter_role_bloc.dart'
    as _i28;
import 'features/authentication/presentation/bloc/register_password/register_enter_password_bloc.dart'
    as _i26;
import 'features/authentication/presentation/bloc/register_verify_email/register_verify_email_bloc.dart'
    as _i29;
import 'features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i30;
import 'features/manage_locker_and_equipment/data/datasources/location_rest_api.dart'
    as _i11;
import 'features/manage_locker_and_equipment/data/datasources/locker_rest_api.dart'
    as _i12;
import 'features/manage_locker_and_equipment/data/repositories/locker-repository-impl.dart'
    as _i20;
import 'features/manage_locker_and_equipment/domain/locker-repository.dart'
    as _i19;
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
  gh.factory<_i11.LocationRestApi>(() => _i11.LocationRestApi());
  gh.factory<_i12.LockerRestApi>(() => _i12.LockerRestApi());
  gh.lazySingleton<_i13.PreRegisterUser>(
      () => firebaseInjectableModule.preRegisterUser);
  gh.factory<_i14.RestApi>(() => _i14.RestApi());
  gh.lazySingleton<_i15.TwitterLogin>(
      () => firebaseInjectableModule.twitterSignIn);
  gh.factory<_i16.TwitterSignInAuth>(
      () => _i16.TwitterSignInAuth(get<_i15.TwitterLogin>()));
  gh.lazySingleton<_i17.AuthenticationRepository>(() =>
      _i18.AuthenticationRepositoryImpl(
          get<_i8.FirebaseSignInAuth>(),
          get<_i10.GoogleSignInAuth>(),
          get<_i5.FacebookSignInAuth>(),
          get<_i16.TwitterSignInAuth>(),
          get<_i13.PreRegisterUser>(),
          get<_i3.AuthRestApi>(),
          get<_i7.FirebaseMessaging>()));
  gh.lazySingleton<_i19.LockerRepository>(() => _i20.LockerRepositoryImpl(
      get<_i17.AuthenticationRepository>(),
      get<_i12.LockerRestApi>(),
      get<_i11.LocationRestApi>()));
  gh.lazySingleton<_i21.PublicRepository>(
      () => _i22.PublicRepositoryImpl(get<_i14.RestApi>()));
  gh.factory<_i23.RegisterEnterEmailBloc>(
      () => _i23.RegisterEnterEmailBloc(get<_i17.AuthenticationRepository>()));
  gh.factory<_i24.RegisterEnterNameBloc>(
      () => _i24.RegisterEnterNameBloc(get<_i17.AuthenticationRepository>()));
  gh.factory<_i25.RegisterEnterOtpBloc>(
      () => _i25.RegisterEnterOtpBloc(get<_i17.AuthenticationRepository>()));
  gh.factory<_i26.RegisterEnterPasswordBloc>(() =>
      _i26.RegisterEnterPasswordBloc(get<_i17.AuthenticationRepository>()));
  gh.factory<_i27.RegisterEnterPhoneNumberBloc>(() =>
      _i27.RegisterEnterPhoneNumberBloc(get<_i17.AuthenticationRepository>()));
  gh.factory<_i28.RegisterEnterRoleBloc>(() => _i28.RegisterEnterRoleBloc(
      get<_i17.AuthenticationRepository>(), get<_i21.PublicRepository>()));
  gh.factory<_i29.RegisterVerifyEmailBloc>(
      () => _i29.RegisterVerifyEmailBloc(get<_i17.AuthenticationRepository>()));
  gh.factory<_i30.SignInFormBloc>(
      () => _i30.SignInFormBloc(get<_i17.AuthenticationRepository>()));
  gh.factory<_i31.LockerBloc>(
      () => _i31.LockerBloc(get<_i19.LockerRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i32.FirebaseInjectableModule {}
