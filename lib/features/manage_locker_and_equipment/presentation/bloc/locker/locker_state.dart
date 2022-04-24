part of 'locker_bloc.dart';

@freezed
class LockerState with _$LockerState {
  const factory LockerState({
    required bool isLoading,
    required List<Locker> lockers,
    required List<Department> departments,
    required RestFailure? failure,
  }) = _LockerState;

  factory LockerState.initial() => const LockerState(
        isLoading: false,
        lockers: [],
        departments: [],
        failure: null,
      );
}
