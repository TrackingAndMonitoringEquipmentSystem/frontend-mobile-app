const String baseSchema = 'http';
const String baseApiUrl = '5d4f-49-237-14-212.ngrok.io';
const int baseApiPort = 80;
enum PublicsPath { getDepartments }
enum AuthenPath { register, signIn, signOut }
enum LockerPath { getLockersByDepartment, getLockers }
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
  LockerPath.getLockers: '/lockers'
};
