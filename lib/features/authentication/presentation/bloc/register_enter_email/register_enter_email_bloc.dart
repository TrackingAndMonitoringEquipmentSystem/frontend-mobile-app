import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'register_enter_email_event.dart';
part 'register_enter_email_state.dart';
part 'register_enter_email_bloc.freezed.dart';

@injectable
class RegisterEnterEmailBloc
    extends Bloc<RegisterEnterEmailEvent, RegisterEnterEmailState> {
  final AuthenticationRepository _authenticationRepository;
  RegisterEnterEmailBloc(
    this._authenticationRepository,
  ) : super(
          RegisterEnterEmailState.initial(
            _authenticationRepository.preRegisterUser.email,
          ),
        ) {
    on<RegisterEnterEmailEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        emailChanged: (e) {
          emit(state.copyWith(email: EmailAddress(e.email)));
        },
        setState: (e) {
          emit(e.state);
        },
        save: (e) {
          emit(state.copyWith(isShowErrorMessage: true));
          if (state.email.isValid()) {
            _authenticationRepository.preRegisterUser =
                _authenticationRepository.preRegisterUser
                    .copyWith(email: state.email);
            emit(state.copyWith(isNavigateNextPage: true));
          }
        },
      );
    });
  }
}
