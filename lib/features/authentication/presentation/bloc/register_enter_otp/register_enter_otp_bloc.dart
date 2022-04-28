import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:frontend/injection.dart';
import 'package:injectable/injectable.dart';

part 'register_enter_otp_event.dart';
part 'register_enter_otp_state.dart';
part 'register_enter_otp_bloc.freezed.dart';

@injectable
class RegisterEnterOtpBloc
    extends Bloc<RegisterEnterOtpEvent, RegisterEnterOtpState> {
  final AuthenticationRepository _authenticationRepository;
  RegisterEnterOtpBloc(
    this._authenticationRepository,
  ) : super(
          RegisterEnterOtpState.initial(
            _authenticationRepository.preRegisterUser.telNo!,
          ),
        ) {
    on<RegisterEnterOtpEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        otpChanged: (e) async {
          emit(
            state.copyWith(
              otp: Otp(
                e.otp,
              ),
              isShowErrorMessage: true,
            ),
          );
          final isOtpValid = state.otp.isValid();
          if (isOtpValid && e.otp.length == 6) {
            emit(state.copyWith(isLoading: true));
            // ignore: avoid_dynamic_calls
            final bool isValidOTP = await e.controller.verifyOTP(
              otp: state.otp.getOrCrash(),
            ) as bool;
            emit(state.copyWith(isLoading: false));
            if (!isValidOTP) {
            } else {
              await getIt<FirebaseAuth>().signOut();
              emit(state.copyWith(isNavigateNextPage: true));
            }
          }
        },
        setState: (e) {
          emit(e.state);
        },
      );
    });
  }
}
