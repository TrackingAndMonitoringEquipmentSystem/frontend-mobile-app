import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'register_enter_password_event.dart';
part 'register_enter_password_state.dart';
part 'register_enter_password_bloc.freezed.dart';

@injectable
class RegisterEnterPasswordBloc
    extends Bloc<RegisterEnterPasswordEvent, RegisterEnterPasswordState> {
  final AuthenticationRepository _authenticationRepository;
  RegisterEnterPasswordBloc(
    this._authenticationRepository,
  ) : super(
          RegisterEnterPasswordState.initial(),
        ) {
    on<RegisterEnterPasswordEvent>((event, emit) {
      event.map(
        passwordChanged: (e) {
          emit(state.copyWith(password: Password(e.password)));
        },
        confirmPasswordChanged: (e) {
          emit(state.copyWith(confirmPassword: Password(e.confirmPassword)));
          if (e.confirmPassword == state.password.value.getOrElse(() => '')) {
            emit(state.copyWith(isErrorPasswordNotSame: false));
          } else {
            emit(state.copyWith(isErrorPasswordNotSame: true));
          }
        },
        setState: (e) {
          emit(e.state);
        },
        save: (e) {
          emit(state.copyWith(isShowErrorMessage: true));
          final isPasswordValid = state.password.isValid();
          final isConfirmPassword = state.confirmPassword.isValid();
          print(
            '->isPasswordValid: $isPasswordValid, isConfirmPassword: $isConfirmPassword',
          );
          if (isPasswordValid &&
              isConfirmPassword &&
              !state.isErrorPasswordNotSame) {
            _authenticationRepository.preRegisterUser =
                _authenticationRepository.preRegisterUser
                    .copyWith(password: state.password);
            emit(state.copyWith(isNavigateNextPage: true));
          }
        },
      );
    });
  }
}
