import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:frontend/core/domain/repositories/rest_failure.dart';
import 'package:frontend/core/utils/environment.dart' as environment;
import 'package:frontend/features/manage_locker_and_equipment/domain/dto/save_equipments_request.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class LockerRestApi {
  final http.Client _httpClient = http.Client();

  LockerRestApi();

  Future<Either<RestFailure, Map<String, dynamic>>> getAll(
    String token,
  ) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: environment.lockers[environment.LockerPath.getLockers],
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
            RestFailure.fromHttpStatusCode(response.statusCode, message));
      }
    } catch (error) {
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> registerLocker({
    required String token,
    required int id,
    required String name,
    required String description,
    required List<int> departmentIds,
    required int roomId,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path:
            '${environment.lockers[environment.LockerPath.registerLocker]}/$id',
      );
      final response = await _httpClient.post(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'locker_name': name,
          'description': description,
          'deptId': departmentIds.map((e) => {'id': e}).toList(),
          'roomId': roomId,
        }),
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
            RestFailure.fromHttpStatusCode(response.statusCode, message));
      }
    } catch (error) {
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> addEquipment({
    required String token,
    required int lockerId,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path:
            '${environment.lockers[environment.LockerPath.addEquipment]}/$lockerId',
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
            RestFailure.fromHttpStatusCode(response.statusCode, message));
      }
    } catch (error) {
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> getAllByDepartment({
    required String token,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: environment.department[environment.DepartmentPath.getLockers],
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
            RestFailure.fromHttpStatusCode(response.statusCode, message));
      }
    } catch (error) {
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> getLockerByIds({
    required String token,
    required List<int> ids,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path:
            '${environment.lockers[environment.LockerPath.viewLocker]}/${ids.join(',')}',
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
            RestFailure.fromHttpStatusCode(response.statusCode, message));
      }
    } catch (error) {
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> saveEquipments({
    required String token,
    required SaveEquipmentsRequest saveEquipmentsRequest,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path:
            '${environment.equipment[environment.EquipmentPath.saveEquipments]}',
      );

      final response = await _httpClient.post(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(saveEquipmentsRequest.toJson()),
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
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> getOpenToken({
    required String token,
    required int lockerId,
    required bool state,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path:
            '${environment.lockers[environment.LockerPath.getOpenToken]}/$lockerId/$state',
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
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }
}
