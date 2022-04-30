// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_messaging/firebase_messaging.dart' as _i9;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:twitter_login/twitter_login.dart' as _i17;

import 'core/data/data_sources/rest_api.dart' as _i16;
import 'core/data/repositories/public_repository_impl.dart' as _i26;
import 'core/domain/repositories/public_repository.dart' as _i25;
import 'core/injection/injectable_module.dart' as _i37;
import 'core/presentation/routes/router.gr.dart' as _i3;
import 'features/authentication/data/datasources/auth_rest_api.dart' as _i4;
import 'features/authentication/data/datasources/facebook_sign_in_auth.dart'
    as _i7;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i10;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i12;
import 'features/authentication/data/datasources/twitter_sign_in_auth.dart'
    as _i18;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i20;
import 'features/authentication/domain/entities/pre_register_user.dart' as _i15;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i19;
import 'features/authentication/presentation/bloc/authen/authen_bloc.dart'
    as _i35;
import 'features/authentication/presentation/bloc/register_enter_email/register_enter_email_bloc.dart'
    as _i27;
import 'features/authentication/presentation/bloc/register_enter_name/register_enter_name_bloc.dart'
    as _i28;
import 'features/authentication/presentation/bloc/register_enter_otp/register_enter_otp_bloc.dart'
    as _i29;
import 'features/authentication/presentation/bloc/register_enter_phone_number/register_enter_phone_number_bloc.dart'
    as _i31;
import 'features/authentication/presentation/bloc/register_enter_role/register_enter_role_bloc.dart'
    as _i32;
import 'features/authentication/presentation/bloc/register_password/register_enter_password_bloc.dart'
    as _i30;
import 'features/authentication/presentation/bloc/register_verify_email/register_verify_email_bloc.dart'
    as _i33;
import 'features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i34;
import 'features/borrowing/data/datasources/borrowing_rest_api.dart' as _i5;
import 'features/borrowing/data/repositories/borrowing_repository_impl.dart'
    as _i22;
import 'features/borrowing/domain/borrowing_repository.dart' as _i21;
import 'features/manage_locker_and_equipment/data/datasources/location_rest_api.dart'
    as _i13;
import 'features/manage_locker_and_equipment/data/datasources/locker_rest_api.dart'
    as _i14;
import 'features/manage_locker_and_equipment/data/repositories/locker-repository-impl.dart'
    as _i24;
import 'features/manage_locker_and_equipment/domain/locker-repository.dart'
    as _i23;
import 'features/manage_locker_and_equipment/presentation/bloc/locker/locker_bloc.dart'
    as _i36; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.AppRouter>(() => firebaseInjectableModule.appRouter);
  gh.factory<_i4.AuthRestApi>(() => _i4.AuthRestApi());
  gh.factory<_i5.BorrowingRestApi>(() => _i5.BorrowingRestApi());
  gh.lazySingleton<_i6.FacebookAuth>(
      () => firebaseInjectableModule.facebookSignIn);
  gh.factory<_i7.FacebookSignInAuth>(
      () => _i7.FacebookSignInAuth(get<_i6.FacebookAuth>()));
  gh.lazySingleton<_i8.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i9.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessage);
  gh.factory<_i10.FirebaseSignInAuth>(
      () => _i10.FirebaseSignInAuth(get<_i8.FirebaseAuth>()));
  gh.lazySingleton<_i11.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i12.GoogleSignInAuth>(
      () => _i12.GoogleSignInAuth(get<_i11.GoogleSignIn>()));
  gh.factory<_i13.LocationRestApi>(() => _i13.LocationRestApi());
  gh.factory<_i14.LockerRestApi>(() => _i14.LockerRestApi());
  gh.lazySingleton<_i15.PreRegisterUser>(
      () => firebaseInjectableModule.preRegisterUser);
  gh.factory<_i16.RestApi>(() => _i16.RestApi());
  gh.lazySingleton<_i17.TwitterLogin>(
      () => firebaseInjectableModule.twitterSignIn);
  gh.factory<_i18.TwitterSignInAuth>(
      () => _i18.TwitterSignInAuth(get<_i17.TwitterLogin>()));
  gh.lazySingleton<_i19.AuthenticationRepository>(() =>
      _i20.AuthenticationRepositoryImpl(
          get<_i10.FirebaseSignInAuth>(),
          get<_i12.GoogleSignInAuth>(),
          get<_i7.FacebookSignInAuth>(),
          get<_i18.TwitterSignInAuth>(),
          get<_i15.PreRegisterUser>(),
          get<_i4.AuthRestApi>(),
          get<_i9.FirebaseMessaging>()));
  gh.lazySingleton<_i21.BorrowingRepository>(() => _i22.BorrowingRepositoryImpl(
      get<_i5.BorrowingRestApi>(), get<_i19.AuthenticationRepository>()));
  gh.lazySingleton<_i23.LockerRepository>(() => _i24.LockerRepositoryImpl(
      get<_i19.AuthenticationRepository>(),
      get<_i14.LockerRestApi>(),
      get<_i13.LocationRestApi>()));
  gh.lazySingleton<_i25.PublicRepository>(
      () => _i26.PublicRepositoryImpl(get<_i16.RestApi>()));
  gh.factory<_i27.RegisterEnterEmailBloc>(
      () => _i27.RegisterEnterEmailBloc(get<_i19.AuthenticationRepository>()));
  gh.factory<_i28.RegisterEnterNameBloc>(
      () => _i28.RegisterEnterNameBloc(get<_i19.AuthenticationRepository>()));
  gh.factory<_i29.RegisterEnterOtpBloc>(
      () => _i29.RegisterEnterOtpBloc(get<_i19.AuthenticationRepository>()));
  gh.factory<_i30.RegisterEnterPasswordBloc>(() =>
      _i30.RegisterEnterPasswordBloc(get<_i19.AuthenticationRepository>()));
  gh.factory<_i31.RegisterEnterPhoneNumberBloc>(() =>
      _i31.RegisterEnterPhoneNumberBloc(get<_i19.AuthenticationRepository>()));
  gh.factory<_i32.RegisterEnterRoleBloc>(() => _i32.RegisterEnterRoleBloc(
      get<_i19.AuthenticationRepository>(), get<_i25.PublicRepository>()));
  gh.factory<_i33.RegisterVerifyEmailBloc>(
      () => _i33.RegisterVerifyEmailBloc(get<_i19.AuthenticationRepository>()));
  gh.factory<_i34.SignInFormBloc>(
      () => _i34.SignInFormBloc(get<_i19.AuthenticationRepository>()));
  gh.factory<_i35.AuthenBloc>(
      () => _i35.AuthenBloc(get<_i19.AuthenticationRepository>()));
  gh.factory<_i36.LockerBloc>(
      () => _i36.LockerBloc(get<_i23.LockerRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i37.FirebaseInjectableModule {}
