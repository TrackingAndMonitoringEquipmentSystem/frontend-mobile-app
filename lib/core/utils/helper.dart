import 'package:frontend/core/utils/enum.dart';
import 'package:frontend/features/borrowing/domain/entities/borrowing.dart';

Gender genderFromString(String value) {
  switch (value) {
    case 'male':
      return Gender.male;
    case 'female':
      return Gender.female;
    case 'other':
      return Gender.other;
    default:
      return Gender.unknown;
  }
}

EquipmentStatus equipmentStatusFromString(String value) {
  switch (value) {
    case 'ล่าช้า':
      return EquipmentStatus.late;
    case 'ยืมอยู่':
      return EquipmentStatus.borrowing;
    case 'ส่งซ่อม':
      return EquipmentStatus.fixing;
    default:
      return EquipmentStatus.available;
  }
}

BorrowingStatus borrowingStatusFromString(String value) {
  switch (value) {
    case 'คืนแล้ว':
      return BorrowingStatus.returned;
    default:
      return BorrowingStatus.borrowing;
  }
}
