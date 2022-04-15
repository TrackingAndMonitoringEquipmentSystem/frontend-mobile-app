import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/public_failure.dart';
import 'package:frontend/core/utils/environment.dart' as environment;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class AuthRestApi {
  final http.Client _httpClient = http.Client();

  AuthRestApi();

  Future<Either<RestFailure, Map<String, dynamic>>> register({
    required String token,
    required String firstName,
    required String lastName,
    required String email,
    required String tel,
    required String fcmToken,
    required int roleId,
    required int departmentId,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: environment.authen[environment.AuthenPath.register],
      );

      final response = await _httpClient.post(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'token': token,
            'firstName': firstName,
            'lastName': lastName,
            'email': email,
            'tel': tel,
            'fcmToken': fcmToken,
            'role': {
              'id': roleId,
            },
            'fcm_token': fcmToken,
            'dept': {
              'id': departmentId,
            },
          },
        ),
      );
      if (response.statusCode == 201) {
        return Right(
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>,
        );
      } else {
        return Left(RestFailure.fromHttpStatusCode(response.statusCode));
      }
    } catch (error) {
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> signIn({
    required String token,
    required String fcmToken,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: environment.authen[environment.AuthenPath.signIn],
      );

      final response = await _httpClient.post(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'fcm_token': fcmToken,
          },
        ),
      );
      if (response.statusCode == 201) {
        return Right(
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>,
        );
      } else {
        return Left(RestFailure.fromHttpStatusCode(response.statusCode));
      }
    } catch (error) {
      return const Left(UnKnownError());
    }
  }
}
