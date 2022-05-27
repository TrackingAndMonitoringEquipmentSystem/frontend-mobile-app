import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest_failure.freezed.dart';

@freezed
class RestFailure with _$RestFailure {
  const factory RestFailure.serverError() = ServerError;
  const factory RestFailure.badRequest(String message) = BadRequest;
  const factory RestFailure.unAuthorized() = UnAuthorized;
  const factory RestFailure.notFound() = NotFound;
  const factory RestFailure.unknownError() = UnKnownError;
  const factory RestFailure.forBidden(String message) = ForBidden;
  factory RestFailure.fromHttpStatusCode(int statusCode, String message) {
    switch (statusCode) {
      case 500:
        return const RestFailure.serverError();
      case 400:
        return RestFailure.badRequest(message);
      case 401:
        return const RestFailure.unAuthorized();
      case 403:
        return RestFailure.forBidden(message);
      case 404:
        return const RestFailure.notFound();
      default:
        return const RestFailure.unknownError();
    }
  }
}
