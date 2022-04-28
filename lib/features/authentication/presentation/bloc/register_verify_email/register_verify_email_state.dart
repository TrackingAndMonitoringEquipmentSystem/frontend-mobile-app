part of 'register_verify_email_bloc.dart';

@freezed
class RegisterVerifyEmailState with _$RegisterVerifyEmailState {
  const factory RegisterVerifyEmailState({
    required bool isShowErrorMessage,
    required bool isNavigateNextPage,
    required bool isError,
    required EmailAddress email,
    required bool isLoading,
    required AuthenticationFailure? authError,
  }) = _RegisterVerifyEmailState;

  factory RegisterVerifyEmailState.initial(PreRegisterUser preRegisterUser) {
    return RegisterVerifyEmailState(
      isShowErrorMessage: false,
      isNavigateNextPage: false,
      isError: false,
      email: preRegisterUser.email!,
      isLoading: false,
      authError: null,
    );
  }
}
