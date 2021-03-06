import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:frontend/features/authentication/presentation/bloc/authen/authen_bloc.dart';
import 'package:frontend/injection.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthenticationRepository _authenticationRepository;

  SignInFormBloc(this._authenticationRepository)
      : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        emailChanged: (e) {
          emit(
            state.copyWith(
              emailAddress: EmailAddress(e.emailStr),
              authenticationFailureOrSuccess: null,
            ),
          );
        },
        passwordChanged: (e) {
          emit(
            state.copyWith(
              password: Password(e.passwordStr),
              authenticationFailureOrSuccess: null,
            ),
          );
        },
        signInWithEmailAndPasswordPressed: (e) async {
          emit(
            state.copyWith(
              authenticationFailureOrSuccess: null,
              isShowErrorMessage: true,
            ),
          );
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();
          if (isEmailValid && isPasswordValid) {
            emit(
              state.copyWith(
                isSubmitting: true,
              ),
            );
            final result =
                await _authenticationRepository.signInWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );
            if (result.isRight()) {
              final firebaseUser = _authenticationRepository.getFirebaseUser;
              if (firebaseUser!.emailVerified) {
                final restResult = await _authenticationRepository.signIn();
                await firebaseUser.reload();
                emit(
                  state.copyWith(
                    isSubmitting: false,
                    authenticationFailureOrSuccess: restResult,
                  ),
                );
              } else {
                emit(
                  state.copyWith(
                    isSubmitting: false,
                    authenticationFailureOrSuccess:
                        const Left(AuthenticationFailure.emailNotVerified()),
                  ),
                );
              }
            } else {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  authenticationFailureOrSuccess: result,
                ),
              );
            }
          }
        },
        signInWithGooglePressed: (e) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              authenticationFailureOrSuccess: null,
            ),
          );
          final failureOrSuccess =
              await _authenticationRepository.signInWithGoogle();
          emit(
            state.copyWith(
              isSubmitting: false,
              authenticationFailureOrSuccess: failureOrSuccess,
            ),
          );
        },
        toggleShowPasswordPressed: (e) async {
          emit(state.copyWith(isShowPassword: !state.isShowPassword));
        },
        signInWithFacebookPressed: (e) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              authenticationFailureOrSuccess: null,
            ),
          );
          final failureOrSuccess =
              await _authenticationRepository.signInWithFacebook();
          emit(
            state.copyWith(
              isSubmitting: false,
              authenticationFailureOrSuccess: failureOrSuccess,
            ),
          );
        },
        signInWithTwitterPressed: (e) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              authenticationFailureOrSuccess: null,
            ),
          );
          final failureOrSuccess =
              await _authenticationRepository.signInWithTwitter();
          emit(
            state.copyWith(
              isSubmitting: false,
              authenticationFailureOrSuccess: failureOrSuccess,
            ),
          );
        },
      );
    });
  }
}
