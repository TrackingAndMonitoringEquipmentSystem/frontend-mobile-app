part of 'register_enter_otp_bloc.dart';

@freezed
class RegisterEnterOtpEvent with _$RegisterEnterOtpEvent {
  const factory RegisterEnterOtpEvent.otpChanged(
    String otp,
    dynamic controller,
  ) = OtpChanged;
  const factory RegisterEnterOtpEvent.setState(RegisterEnterOtpState state) =
      SetState;
}
