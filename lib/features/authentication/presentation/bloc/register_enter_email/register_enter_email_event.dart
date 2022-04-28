part of 'register_enter_email_bloc.dart';

@freezed
class RegisterEnterEmailEvent with _$RegisterEnterEmailEvent {
  const factory RegisterEnterEmailEvent.emailChanged(
    String email,
  ) = EmailChanged;
  const factory RegisterEnterEmailEvent.setState(
    RegisterEnterEmailState state,
  ) = SetState;

  const factory RegisterEnterEmailEvent.save() = Save;
}
