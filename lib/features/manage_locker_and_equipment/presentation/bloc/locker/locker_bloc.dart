import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/locker-repository.dart';
import 'package:injectable/injectable.dart';

part 'locker_even.dart';
part 'locker_state.dart';
part 'locker_bloc.freezed.dart';

@injectable
class LockerBloc extends Bloc<LockerEvent, LockerState> {
  final LockerRepository _lockerRepository;
  LockerBloc(
    this._lockerRepository,
  ) : super(
          LockerState.initial(),
        ) {
    on<LockerEvent>((event, emit) async {
      try {
        await event.map<FutureOr<void>>(
          initState: (e) async {
            emit(state.copyWith(isLoading: true));
            final result = await _lockerRepository.getAll();
            emit(state.copyWith(isLoading: false));
            result.fold((l) => print(l), (r) {
              emit(state.copyWith(lockers: r));
            });
          },
        );
      } catch (error) {
        print('error:');
        print(error);
      }
    });
  }
}
