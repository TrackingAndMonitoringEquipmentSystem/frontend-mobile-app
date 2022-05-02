import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/features/borrowing/domain/entities/borrowing.dart';

part 'borrowing_group.freezed.dart';

@freezed
class BorrowingGroup with _$BorrowingGroup {
  const factory BorrowingGroup({
    required int id,
    required List<Borrowing> borrowings,
  }) = _BorrowingGroup;

  @override
  factory BorrowingGroup.fromJson(Map<String, dynamic> json) {
    return BorrowingGroup(
      id: json['id'] as int,
      borrowings: (json['borrowReturns'] as List)
          .map((e) => Borrowing.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
