import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/public_failure.dart';
import 'package:frontend/core/utils/environment.dart' as environment;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class RestApi {
  final http.Client _httpClient = http.Client();

  RestApi();

  Future<Either<PublicFailure, Map<String, dynamic>>> getDepartments() async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: environment.publics[environment.PublicsPath.getDepartments],
      );

      final response = await _httpClient.get(uri);
      if (response.statusCode == 200) {
        return Right(
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>,
        );
      } else {
        return Left(PublicFailure.fromHttpStatusCode(response.statusCode));
      }
    } catch (error) {
      return const Left(UnKnownError());
    }
  }
}
