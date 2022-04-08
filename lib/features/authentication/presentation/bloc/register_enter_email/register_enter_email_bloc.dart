import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'register_enter_email_event.dart';
part 'register_enter_email_state.dart';
part 'register_enter_email_bloc.freezed.dart';

@injectable
class RegisterEnterOtpBloc
    extends Bloc<RegisterEnterEmailEvent, RegisterEnterEmailState> {
  final AuthenticationRepository _authenticationRepository;
  RegisterEnterOtpBloc(
    this._authenticationRepository,
  ) : super(
          RegisterEnterEmailState.initial(
            _authenticationRepository.preRegisterUser.email,
          ),
        ) {
    on<RegisterEnterEmailEvent>((event, emit) async {});
  }
}
