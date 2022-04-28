part of 'register_enter_phone_number_bloc.dart';

@freezed
class RegisterEnterPhoneNumberState with _$RegisterEnterPhoneNumberState {
  const factory RegisterEnterPhoneNumberState({
    required TelNo telNo,
    required bool isShowErrorMessage,
    required bool isNavigateNextPage,
  }) = _RegisterEnterPhoneNumberState;

  factory RegisterEnterPhoneNumberState.initial(
    AuthenticationRepository _authenticationRepository,
  ) {
    return RegisterEnterPhoneNumberState(
      telNo: _authenticationRepository.preRegisterUser.telNo ?? TelNo(''),
      isShowErrorMessage: false,
      isNavigateNextPage: false,
    );
  }
}
