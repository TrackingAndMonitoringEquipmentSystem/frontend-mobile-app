const String baseSchema = 'http';
const String baseApiUrl = 'f577-161-246-5-203.ngrok.io';
const int baseApiPort = 80;
enum PublicsPath { getDepartments }
enum AuthenPath { register, signIn, signOut }
enum LockerPath {
  getLockersByDepartment,
  getLockers,
  registerLocker,
  addEquipment,
  viewLocker,
}
enum LocationPath { getBuildings }
enum DepartmentPath { getLockers }
enum EquipmentPath { saveEquipments }

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
  LockerPath.viewLocker: '/lockers/viewLocker'
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
