import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/core/utils/helper.dart';
import 'package:frontend/features/manage_locker_and_equipment/domain/entities/equipment.dart';

part 'borrowing.freezed.dart';

@freezed
class Borrowing with _$Borrowing {
  const factory Borrowing({
    required int id,
    required BorrowingStatus status,
    required DateTime borrowedAt,
    required DateTime deadlineAt,
    required DateTime? returnedAt,
    required Equipment equipment,
  }) = _Borrowing;

  @override
  factory Borrowing.fromJson(Map<String, dynamic> json) {
    return Borrowing(
      id: json['id'] as int,
      status: borrowingStatusFromString(json['status'] as String),
      borrowedAt: DateTime.parse(json['borrowed_at'] as String),
      deadlineAt: DateTime.parse(json['deadline_at'] as String),
      equipment: Equipment.fromJson(json['equipment'] as Map<String, dynamic>),
      returnedAt: json['returned_at'] != null
          ? DateTime.parse(json['returned_at'] as String)
          : null,
    );
  }
}
