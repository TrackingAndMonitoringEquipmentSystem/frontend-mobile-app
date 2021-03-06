part of 'register_enter_role_bloc.dart';

@freezed
class RegisterEnterRoleEvent with _$RegisterEnterRoleEvent {
  const factory RegisterEnterRoleEvent.setState(
    RegisterEnterRoleState state,
  ) = SetState;

  const factory RegisterEnterRoleEvent.save() = Save;
  const factory RegisterEnterRoleEvent.initState() = InitState;
  const factory RegisterEnterRoleEvent.changedRole(Role role) = ChangedRole;
  const factory RegisterEnterRoleEvent.changedDepartment(
      Department department) = ChangedDepartment;
}
