import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'register_enter_name_event.dart';
part 'register_enter_name_state.dart';
part 'register_enter_name_bloc.freezed.dart';

@injectable
class RegisterEnterNameBloc
    extends Bloc<RegisterEnterNameEvent, RegisterEnterNameState> {
  final AuthenticationRepository _authenticationRepository;

  RegisterEnterNameBloc(this._authenticationRepository)
      : super(RegisterEnterNameState.initial(_authenticationRepository)) {
    on<RegisterEnterNameEvent>((event, emit) {
      event.map(
        firstNameChanged: (e) {
          emit(state.copyWith(firstName: FirstName(e.firstName)));
        },
        lastNameChanged: (e) {
          emit(state.copyWith(lastName: LastName(e.lastName)));
        },
        save: (e) {
          emit(state.copyWith(isShowErrorMessage: true));
          final isFirstNameValid = state.firstName.isValid();
          final isLastNameValid = state.lastName.isValid();
          if (isFirstNameValid && isLastNameValid) {
            _authenticationRepository.preRegisterUser =
                _authenticationRepository.preRegisterUser.copyWith(
              firstName: state.firstName,
              lastName: state.lastName,
            );
            emit(state.copyWith(isNavigateNextPage: true));
          } else {
            emit(state.copyWith(isShowErrorMessage: true));
          }
        },
        setNavigateNextPage: (e) {
          emit(state.copyWith(isNavigateNextPage: e.isNavigateNextPage));
        },
      );
    });
  }
}
