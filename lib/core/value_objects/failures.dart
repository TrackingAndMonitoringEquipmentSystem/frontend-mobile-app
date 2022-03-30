import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required String failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidPhoneNo({
    required String failedValue,
  }) = InvalidPhoneNo<T>;

  const factory ValueFailure.hadNotAlphabet({
    required String failedValue,
  }) = HadNotAlphabet<T>;
}
