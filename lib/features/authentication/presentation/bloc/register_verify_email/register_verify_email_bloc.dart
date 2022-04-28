import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/entities/pre_register_user.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'register_verify_email_event.dart';
part 'register_verify_email_state.dart';
part 'register_verify_email_bloc.freezed.dart';

@injectable
class RegisterVerifyEmailBloc
    extends Bloc<RegisterVerifyEmailEvent, RegisterVerifyEmailState> {
  final AuthenticationRepository _authenticationRepository;
  RegisterVerifyEmailBloc(
    this._authenticationRepository,
  ) : super(
          RegisterVerifyEmailState.initial(
            _authenticationRepository.preRegisterUser,
          ),
        ) {
    on<RegisterVerifyEmailEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        setState: (e) {},
        save: (e) {},
        initState: (e) async {
          emit(state.copyWith(isLoading: true));
          final result =
              await _authenticationRepository.registerWithEmailAndPassword();
          result.fold(
            (l) => emit(
              state.copyWith(isError: true, isLoading: false, authError: l),
            ),
            (r) => emit(
              state.copyWith(isLoading: false),
            ),
          );
        },
      );
    });
  }
}
