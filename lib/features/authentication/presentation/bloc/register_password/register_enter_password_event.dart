part of 'register_enter_password_bloc.dart';

@freezed
class RegisterEnterPasswordEvent with _$RegisterEnterPasswordEvent {
  const factory RegisterEnterPasswordEvent.passwordChanged(
    String password,
  ) = PasswordChanged;
  const factory RegisterEnterPasswordEvent.confirmPasswordChanged(
    String confirmPassword,
  ) = ConfirmPasswordChanged;
  const factory RegisterEnterPasswordEvent.setState(
    RegisterEnterPasswordState state,
  ) = SetState;

  const factory RegisterEnterPasswordEvent.save() = Save;
}
