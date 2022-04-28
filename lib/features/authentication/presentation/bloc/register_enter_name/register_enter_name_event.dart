part of 'register_enter_name_bloc.dart';

@freezed
class RegisterEnterNameEvent with _$RegisterEnterNameEvent {
  const factory RegisterEnterNameEvent.firstNameChanged(String firstName) =
      FirstNameChanged;
  const factory RegisterEnterNameEvent.lastNameChanged(String lastName) =
      LastNameChanged;
  const factory RegisterEnterNameEvent.save() = Save;
  const factory RegisterEnterNameEvent.setNavigateNextPage({
    required bool isNavigateNextPage,
  }) = SetNavigateNextPage;
}
