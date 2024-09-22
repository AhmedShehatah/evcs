// ignore_for_file: constant_identifier_names

class AppEndpoints {
  AppEndpoints._();
  static const String BASE_URL = 'http://192.168.1.4:5000/api/v1';
  static const String Authorization = 'Authorization';
  // receiveTimeout in seconds
  static const int receiveTimeout = 30;
  // connectTimeout in seconds
  static const int connectionTimeout = 30;

  static const String signUp = "/signup";
  static const String signIn = "/signin";
  static const String addCar = "/cars";
}
