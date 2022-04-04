import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'register_enter_otp_event.dart';
part 'register_enter_otp_state.dart';
part 'register_enter_otp_bloc.freezed.dart';

@injectable
class RegisterEnterOtpBloc
    extends Bloc<RegisterEnterOtpEvent, RegisterEnterOtpState> {
  final AuthenticationRepository _authenticationRepository;

  RegisterEnterOtpBloc(this._authenticationRepository)
      : super(
          RegisterEnterOtpState.initial(
            _authenticationRepository.preRegisterUser.telNo!,
          ),
        ) {
    on<RegisterEnterOtpEvent>((event, emit) {});
  }
}
