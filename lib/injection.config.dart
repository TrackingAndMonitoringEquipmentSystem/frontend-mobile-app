// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:twitter_login/twitter_login.dart' as _i11;

import 'core/data/data_sources/rest_api.dart' as _i10;
import 'core/data/repositories/public_repository_impl.dart' as _i16;
import 'core/domain/repositories/public_repository.dart' as _i15;
import 'core/injection/injectable_module.dart' as _i25;
import 'features/authentication/data/datasources/facebook_sign_in_auth.dart'
    as _i4;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i6;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i8;
import 'features/authentication/data/datasources/twitter_sign_in_auth.dart'
    as _i12;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i14;
import 'features/authentication/domain/entities/pre_register_user.dart' as _i9;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i13;
import 'features/authentication/presentation/bloc/authen/authen_bloc.dart'
    as _i24;
import 'features/authentication/presentation/bloc/register_enter_email/register_enter_email_bloc.dart'
    as _i17;
import 'features/authentication/presentation/bloc/register_enter_name/register_enter_name_bloc.dart'
    as _i18;
import 'features/authentication/presentation/bloc/register_enter_otp/register_enter_otp_bloc.dart'
    as _i19;
import 'features/authentication/presentation/bloc/register_enter_phone_number/register_enter_phone_number_bloc.dart'
    as _i21;
import 'features/authentication/presentation/bloc/register_enter_role/register_enter_role_bloc.dart'
    as _i22;
import 'features/authentication/presentation/bloc/register_password/register_enter_password_bloc.dart'
    as _i20;
import 'features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i10.RestApi>(() => _i10.RestApi());
  gh.lazySingleton<_i11.TwitterLogin>(
      () => firebaseInjectableModule.twitterSignIn);
  gh.factory<_i12.TwitterSignInAuth>(
      () => _i12.TwitterSignInAuth(get<_i11.TwitterLogin>()));
  gh.lazySingleton<_i13.AuthenticationRepository>(() =>
      _i14.AuthenticationRepositoryImpl(
          get<_i6.FirebaseSignInAuth>(),
          get<_i8.GoogleSignInAuth>(),
          get<_i4.FacebookSignInAuth>(),
          get<_i12.TwitterSignInAuth>(),
          get<_i9.PreRegisterUser>()));
  gh.lazySingleton<_i15.PublicRepository>(
      () => _i16.PublicRepositoryImpl(get<_i10.RestApi>()));
  gh.factory<_i17.RegisterEnterEmailBloc>(
      () => _i17.RegisterEnterEmailBloc(get<_i13.AuthenticationRepository>()));
  gh.factory<_i18.RegisterEnterNameBloc>(
      () => _i18.RegisterEnterNameBloc(get<_i13.AuthenticationRepository>()));
  gh.factory<_i19.RegisterEnterOtpBloc>(
      () => _i19.RegisterEnterOtpBloc(get<_i13.AuthenticationRepository>()));
  gh.factory<_i20.RegisterEnterPasswordBloc>(() =>
      _i20.RegisterEnterPasswordBloc(get<_i13.AuthenticationRepository>()));
  gh.factory<_i21.RegisterEnterPhoneNumberBloc>(() =>
      _i21.RegisterEnterPhoneNumberBloc(get<_i13.AuthenticationRepository>()));
  gh.factory<_i22.RegisterEnterRoleBloc>(() => _i22.RegisterEnterRoleBloc(
      get<_i13.AuthenticationRepository>(), get<_i15.PublicRepository>()));
  gh.factory<_i23.SignInFormBloc>(
      () => _i23.SignInFormBloc(get<_i13.AuthenticationRepository>()));
  gh.factory<_i24.AuthenBloc>(
      () => _i24.AuthenBloc(get<_i13.AuthenticationRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i25.FirebaseInjectableModule {}
