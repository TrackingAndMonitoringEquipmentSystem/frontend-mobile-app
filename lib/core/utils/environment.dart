const String baseSchema = 'https';
const String baseApiUrl = 'toollo-api.godprogrammer.dev';
const int baseApiPort = 443;
enum PublicsPath { getDepartments }
enum AuthenPath { register, signIn, signOut }
enum LockerPath {
  getLockersByDepartment,
  getLockers,
  registerLocker,
  addEquipment,
  viewLocker,
  getOpenToken,
  userViewLockers,
}
enum LocationPath { getBuildings }
enum DepartmentPath { getLockers }
enum EquipmentPath { saveEquipments }
enum BorrowingPath { getBorrowGroup, listBorrowGroup }
enum CameraPath { listByLockerId }

enum TypeEquipmentPath {
  userViewEquipments,
}
const Map<PublicsPath, String> publics = {
  PublicsPath.getDepartments: '/publics/departments'
};

const Map<AuthenPath, String> authen = {
  AuthenPath.register: '/authen/register',
  AuthenPath.signIn: '/authen/signin',
  AuthenPath.signOut: '/authen/signout'
};

const Map<LockerPath, String> lockers = {
  LockerPath.getLockersByDepartment: '/lockers/lockersByDepartment',
  LockerPath.getLockers: '/lockers',
  LockerPath.registerLocker: '/lockers/registerLocker',
  LockerPath.addEquipment: '/lockers/addEquipment',
  LockerPath.viewLocker: '/lockers/viewLocker',
  LockerPath.getOpenToken: '/lockers/getOpenToken',
  LockerPath.userViewLockers: '/lockers/userViewLocker',
};

const Map<LocationPath, String> location = {
  LocationPath.getBuildings: '/location/buildings',
};

const Map<DepartmentPath, String> department = {
  DepartmentPath.getLockers: '/department/viewLockerByDepartment',
};

const Map<EquipmentPath, String> equipment = {
  EquipmentPath.saveEquipments: '/equipment/saveEquipments',
};

const Map<BorrowingPath, String> borrow = {
  BorrowingPath.getBorrowGroup: '/borrow/viewByGroup',
  BorrowingPath.listBorrowGroup: '/group-borrow',
};

const Map<CameraPath, String> camera = {
  CameraPath.listByLockerId: '/lockers/camera',
};

const Map<TypeEquipmentPath, String> typeEquipment = {
  TypeEquipmentPath.userViewEquipments: '/type-equipment/userViewEquipment',
};
