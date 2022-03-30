import 'package:dartz/dartz.dart';
import 'package:frontend/core/value_objects/failures.dart';
import 'package:frontend/core/value_objects/value_objects.dart';
import 'package:frontend/core/value_objects/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(value: validateEmailAddress(input));
  }

  const EmailAddress._({required this.value});
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(value: validatePassword(input));
  }

  const Password._({required this.value});
}

class TelNo extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory TelNo(String input) {
    return TelNo._(value: validateTelNo(input));
  }

  const TelNo._({required this.value});
}

class FirstName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory FirstName(String input) {
    return FirstName._(value: validateOnlyAlphabet(input));
  }

  const FirstName._({required this.value});
}

class LastName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory LastName(String input) {
    return LastName._(value: validateOnlyAlphabet(input));
  }

  const LastName._({required this.value});
}
