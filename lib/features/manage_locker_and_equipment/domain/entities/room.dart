import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/floor.dart';

part 'room.freezed.dart';

@freezed
class Room with _$Room {
  const factory Room({
    required int id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Floor? floor,
  }) = _Room;

  @override
  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'] as int,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      floor: json['floor'] != null
          ? Floor.fromJson(json['floor'] as Map<String, dynamic>)
          : null,
    );
  }
}
