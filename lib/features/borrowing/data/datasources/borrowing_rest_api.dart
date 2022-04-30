import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/core/utils/environment.dart' as environment;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class BorrowingRestApi {
  final http.Client _httpClient = http.Client();
  BorrowingRestApi();

  Future<Either<RestFailure, Map<String, dynamic>>> getBorrowGroup(
    String token,
    int id,
  ) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path:
            '${environment.borrow[environment.BorrowingPath.getBorrowGroup]}/$id',
      );

      final response = await _httpClient.get(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      );
      print(response.reasonPhrase);
      print(response.body);
      if (response.statusCode == 200) {
        return Right(
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>,
        );
      } else {
        final body =
            jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
        String message;
        if (body.containsKey('message') && body['message'] != null) {
          message = body['message'] as String;
        } else {
          message = response.reasonPhrase!;
        }
        return Left(
          RestFailure.fromHttpStatusCode(
            response.statusCode,
            message,
          ),
        );
      }
    } catch (error) {
      return const Left(UnKnownError());
    }
  }
}
