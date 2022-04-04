part of 'register_enter_phone_number_bloc.dart';

@freezed
class RegisterEnterPhoneNumberEvent with _$RegisterEnterPhoneNumberEvent {
  const factory RegisterEnterPhoneNumberEvent.phoneNumberChanged(
    String phoneNumber,
  ) = PhoneNumberChanged;
  const factory RegisterEnterPhoneNumberEvent.save() = Save;
  const factory RegisterEnterPhoneNumberEvent.setNavigateNextPage({
    required bool isNavigateNextPage,
  }) = SetNavigateNextPage;
}
