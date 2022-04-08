part of 'register_enter_otp_bloc.dart';

@freezed
class RegisterEnterOtpState with _$RegisterEnterOtpState {
  const factory RegisterEnterOtpState({
    required TelNo telNo,
    required bool isShowErrorMessage,
    required bool isNavigateNextPage,
    required Otp otp,
    required bool isLoading,
    required bool isError,
    required TextEditingController controller,
  }) = _RegisterEnterOtpState;

  factory RegisterEnterOtpState.initial(TelNo telNo) => RegisterEnterOtpState(
        telNo: telNo,
        isShowErrorMessage: false,
        isNavigateNextPage: false,
        otp: Otp(''),
        isLoading: false,
        isError: false,
        controller: TextEditingController(),
      );
}
