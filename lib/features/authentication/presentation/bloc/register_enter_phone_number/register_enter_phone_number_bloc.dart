import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'register_enter_phone_number_event.dart';
part 'register_enter_phone_number_state.dart';
part 'register_enter_phone_number_bloc.freezed.dart';

@injectable
class RegisterEnterPhoneNumberBloc
    extends Bloc<RegisterEnterPhoneNumberEvent, RegisterEnterPhoneNumberState> {
  final AuthenticationRepository _authenticationRepository;

  RegisterEnterPhoneNumberBloc(this._authenticationRepository)
      : super(
          RegisterEnterPhoneNumberState.initial(),
        ) {
    on<RegisterEnterPhoneNumberEvent>((event, emit) {
      event.map(
        phoneNumberChanged: (e) {
          emit(state.copyWith(telNo: TelNo(e.phoneNumber)));
        },
        save: (e) {
          emit(state.copyWith(isShowErrorMessage: true));
          final isPhoneNumberValid = state.telNo.isValid();
          if (isPhoneNumberValid) {
            _authenticationRepository.preRegisterUser =
                _authenticationRepository.preRegisterUser
                    .copyWith(telNo: state.telNo);
            emit(state.copyWith(isNavigateNextPage: true));
          }
        },
        setNavigateNextPage: (e) {},
      );
    });
  }
}
