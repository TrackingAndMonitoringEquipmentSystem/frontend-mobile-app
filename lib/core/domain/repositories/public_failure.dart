import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_failure.freezed.dart';

@freezed
class PublicFailure with _$PublicFailure {
  const factory PublicFailure.serverError() = ServerError;
  const factory PublicFailure.badRequest() = BadRequest;
  const factory PublicFailure.unAuthorized() = UnAuthorized;
  const factory PublicFailure.unknownError() = UnKnownError;
  factory PublicFailure.fromHttpStatusCode(int statusCode) {
    switch (statusCode) {
      case 500:
        return const PublicFailure.serverError();
      case 400:
        return const PublicFailure.badRequest();
      case 401:
        return const PublicFailure.unAuthorized();
      default:
        return const PublicFailure.unknownError();
    }
  }
}
