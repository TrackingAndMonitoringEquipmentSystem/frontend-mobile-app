import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
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
      print('reason: ${response.reasonPhrase}');
      print('body: ${response.body}');
      print('response.statusCode: ${response.statusCode}');
      if (response.statusCode == 201) {
        print('jsonBody: ${utf8.decode(response.bodyBytes)}');
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
            RestFailure.fromHttpStatusCode(response.statusCode, message));
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
      print('token');
      print(token);
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
      print(response.statusCode);
      print(response.reasonPhrase);
      print(response.body);
      if (response.statusCode == 201) {
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
          RestFailure.fromHttpStatusCode(response.statusCode, message),
        );
      }
    } catch (error) {
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> signOut({
    required String token,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: environment.authen[environment.AuthenPath.signOut],
      );

      final response = await _httpClient.get(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
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
          RestFailure.fromHttpStatusCode(response.statusCode, message),
        );
      }
    } catch (error) {
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> addFaceId({
    required String token,
    required int userId,
    required String base64Image,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: '${environment.authen[environment.AuthenPath.addFaceId]}/$userId',
      );

      final response = await _httpClient.post(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          {
            'imagebase64': base64Image,
          },
        ),
      );
      print(response.reasonPhrase);
      print(response.body);
      if (response.statusCode == 201) {
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
          RestFailure.fromHttpStatusCode(response.statusCode, message),
        );
      }
    } catch (error) {
      return const Left(UnKnownError());
    }
  }
}
