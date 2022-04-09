part of 'register_enter_role_bloc.dart';

@freezed
class RegisterEnterRoleState with _$RegisterEnterRoleState {
  const factory RegisterEnterRoleState({
    required bool isShowErrorMessage,
    required bool isNavigateNextPage,
    required Role role,
    required Department? department,
    required bool isLoading,
    required List<Department> departmentChoices,
    required bool isError,
  }) = _RegisterEnterRoleState;

  factory RegisterEnterRoleState.initial() => const RegisterEnterRoleState(
        isShowErrorMessage: false,
        isNavigateNextPage: false,
        role: Role.user,
        department: null,
        isLoading: false,
        departmentChoices: [],
        isError: false,
      );
}
