part of 'register_enter_email_bloc.dart';

@freezed
class RegisterEnterEmailEvent with _$RegisterEnterEmailEvent {
  const factory RegisterEnterEmailEvent.otpChanged(
    String email,
  ) = EmailChanged;
  const factory RegisterEnterEmailEvent.setState(
    RegisterEnterEmailState state,
  ) = SetState;
}
