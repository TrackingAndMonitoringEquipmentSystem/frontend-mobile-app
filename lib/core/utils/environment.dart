const String baseSchema = 'https';
const String baseApiUrl = 'toollo-api-dev.godprogrammer.dev';
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
}
enum LocationPath { getBuildings }
enum DepartmentPath { getLockers }
enum EquipmentPath { saveEquipments }
enum BorrowingPath { getBorrowGroup }
enum CameraPath { listByLockerId }

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
};

const Map<CameraPath, String> camera = {
  CameraPath.listByLockerId: '/lockers/camera',
};
