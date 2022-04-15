part of 'register_verify_email_bloc.dart';

@freezed
class RegisterVerifyEmailEvent with _$RegisterVerifyEmailEvent {
  const factory RegisterVerifyEmailEvent.setState(
    RegisterVerifyEmailState state,
  ) = SetState;

  const factory RegisterVerifyEmailEvent.save() = Save;
  const factory RegisterVerifyEmailEvent.initState() = InitState;
}
