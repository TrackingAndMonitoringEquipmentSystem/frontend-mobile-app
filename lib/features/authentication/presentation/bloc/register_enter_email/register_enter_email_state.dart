part of 'register_enter_email_bloc.dart';

@freezed
class RegisterEnterEmailState with _$RegisterEnterEmailState {
  const factory RegisterEnterEmailState({
    required EmailAddress email,
    required bool isShowErrorMessage,
    required bool isNavigateNextPage,
    required bool isLoading,
    required bool isError,
  }) = _RegisterEnterEmailState;

  factory RegisterEnterEmailState.initial(EmailAddress? email) =>
      RegisterEnterEmailState(
        email: email ?? EmailAddress(''),
        isShowErrorMessage: false,
        isNavigateNextPage: false,
        isLoading: false,
        isError: false,
      );
}
