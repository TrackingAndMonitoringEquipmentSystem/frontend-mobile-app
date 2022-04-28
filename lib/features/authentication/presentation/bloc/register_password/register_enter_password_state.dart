part of 'register_enter_password_bloc.dart';

@freezed
class RegisterEnterPasswordState with _$RegisterEnterPasswordState {
  const factory RegisterEnterPasswordState({
    required Password password,
    required Password confirmPassword,
    required bool isShowPassword,
    required bool isShowConfirmPassword,
    required bool isShowErrorMessage,
    required bool isNavigateNextPage,
    required bool isErrorPasswordNotSame,
  }) = _RegisterEnterPasswordState;

  factory RegisterEnterPasswordState.initial() => RegisterEnterPasswordState(
        password: Password(''),
        confirmPassword: Password(''),
        isShowPassword: false,
        isShowConfirmPassword: false,
        isShowErrorMessage: false,
        isNavigateNextPage: false,
        isErrorPasswordNotSame: false,
      );
}
