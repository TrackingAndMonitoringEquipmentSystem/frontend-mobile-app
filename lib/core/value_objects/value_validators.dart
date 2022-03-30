import 'package:dartz/dartz.dart';
import 'package:frontend/core/value_objects/failures.dart';
import 'package:frontend/features/authentication/domain/value_objects/value_objects.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex = r"""^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateTelNo(String input) {
  if (input.length == 10 && input.startsWith('0')) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNo(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateOnlyAlphabet(String input) {
  if (RegExp('^[ก-๛A-Za-z]').hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.hadNotAlphabet(failedValue: input));
  }
}
