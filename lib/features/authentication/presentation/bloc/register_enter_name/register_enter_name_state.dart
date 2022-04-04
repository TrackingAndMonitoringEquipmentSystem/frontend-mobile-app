part of 'register_enter_name_bloc.dart';

@freezed
class RegisterEnterNameState with _$RegisterEnterNameState {
  const factory RegisterEnterNameState({
    required FirstName firstName,
    required LastName lastName,
    required bool isShowErrorMessage,
    required bool isNavigateNextPage,
  }) = _RegisterEnterNameState;

  factory RegisterEnterNameState.initial() => RegisterEnterNameState(
        firstName: FirstName(''),
        lastName: LastName(''),
        isShowErrorMessage: false,
        isNavigateNextPage: false,
      );
}
