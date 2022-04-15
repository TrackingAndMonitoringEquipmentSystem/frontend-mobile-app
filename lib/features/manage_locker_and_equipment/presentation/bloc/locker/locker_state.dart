part of 'locker_bloc.dart';

@freezed
class LockerState with _$LockerState {
  const factory LockerState({
    required bool isLoading,
    required List<Locker> lockers,
  }) = _LockerState;

  factory LockerState.initial() => const LockerState(
        isLoading: false,
        lockers: [],
      );
}
