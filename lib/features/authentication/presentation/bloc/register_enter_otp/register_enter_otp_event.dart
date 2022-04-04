part of 'register_enter_otp_bloc.dart';

@freezed
class RegisterEnterOtpEvent with _$RegisterEnterOtpEvent {
  const factory RegisterEnterOtpEvent.otpChanged(
    String otp,
  ) = OtpChanged;
  const factory RegisterEnterOtpEvent.save() = Save;
  const factory RegisterEnterOtpEvent.setNavigateNextPage({
    required bool isNavigateNextPage,
  }) = SetNavigateNextPage;
}
