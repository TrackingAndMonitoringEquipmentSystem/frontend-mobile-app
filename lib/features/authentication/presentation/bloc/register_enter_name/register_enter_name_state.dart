part of 'register_enter_name_bloc.dart';

@freezed
class RegisterEnterNameState with _$RegisterEnterNameState {
  const factory RegisterEnterNameState({
    required FirstName firstName,
    required LastName lastName,
    required bool isShowErrorMessage,
    required bool isNavigateNextPage,
  }) = _RegisterEnterNameState;

  factory RegisterEnterNameState.initial(
          AuthenticationRepository _authenticationRepository) =>
      RegisterEnterNameState(
        firstName: _authenticationRepository.preRegisterUser.firstName ??
            FirstName(''),
        lastName:
            _authenticationRepository.preRegisterUser.lastName ?? LastName(''),
        isShowErrorMessage: false,
        isNavigateNextPage: false,
      );
}
