import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/domain/repositories/public_repository.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/authentication/domain/entities/pre_register_user.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:injectable/injectable.dart';

part 'register_enter_role_event.dart';
part 'register_enter_role_state.dart';
part 'register_enter_role_bloc.freezed.dart';

@injectable
class RegisterEnterRoleBloc
    extends Bloc<RegisterEnterRoleEvent, RegisterEnterRoleState> {
  final AuthenticationRepository _authenticationRepository;
  final PublicRepository _publicRepository;
  RegisterEnterRoleBloc(
    this._authenticationRepository,
    this._publicRepository,
  ) : super(
          RegisterEnterRoleState.initial(
            _authenticationRepository.preRegisterUser,
          ),
        ) {
    on<RegisterEnterRoleEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        setState: (e) {
          emit(e.state);
        },
        save: (e) {
          emit(state.copyWith(isShowErrorMessage: true));
          if (state.role != null && state.department != null) {
            _authenticationRepository.preRegisterUser =
                _authenticationRepository.preRegisterUser
                    .copyWith(role: state.role, department: state.department);
            emit(state.copyWith(isNavigateNextPage: true));
          }
        },
        initState: (e) async {
          emit(state.copyWith(isLoading: true, isError: false));
          final departments = await _publicRepository.getDepartments();
          print('departments: $departments');
          emit(state.copyWith(isLoading: false));
          departments.fold((l) {
            emit(state.copyWith(isError: true));
          }, (r) {
            emit(state.copyWith(isError: true, departmentChoices: r));
          });
        },
        changedDepartment: (ChangedDepartment value) {
          emit(state.copyWith(department: value.department));
        },
        changedRole: (ChangedRole value) {
          emit(state.copyWith(role: value.role));
        },
      );
    });
  }
}
