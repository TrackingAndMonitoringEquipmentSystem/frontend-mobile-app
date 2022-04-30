enum Role { superAdmin, admin, masterMaintainer, maintainer, user }

extension RoleExtension on Role {
  String toNameString() {
    switch (this) {
      case Role.superAdmin:
        return 'Super admin';
      case Role.admin:
        return 'Admin';
      case Role.masterMaintainer:
        return 'Master maintaner';
      case Role.maintainer:
        return 'Maintainer';
      case Role.user:
        return 'User';
      default:
        return 'unknown role';
    }
  }
}

enum EquipmentStatus { late, available, borrowing, fixing }

extension EquipmentStatusExtension on EquipmentStatus {
  String toNameString() {
    switch (this) {
      case EquipmentStatus.available:
        return 'พร้อมใช้งาน';
      case EquipmentStatus.borrowing:
        return 'ยืมอยู่';
      case EquipmentStatus.fixing:
        return 'ส่งซ่อม';
      case EquipmentStatus.late:
        return 'ล่าช้า';
      default:
        return 'unknown equipment status';
    }
  }
}

enum ManagementLockerAndEquipmentView { department, location, equipment }
enum ManagementLocationView { building, floor, room }
enum StreamAndRecordView { department, location }
enum Gender { male, female, other, unknown }
enum BorrowingStatus { borrowing, returned }
