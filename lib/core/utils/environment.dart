const String baseSchema = 'http';
const String baseApiUrl = 'de43-27-55-86-65.ngrok.io';
const int baseApiPort = 80;
enum PublicsPath { getDepartments }
const Map<PublicsPath, String> publics = {
  PublicsPath.getDepartments: '/publics/departments'
};
