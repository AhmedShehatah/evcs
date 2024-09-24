// ignore_for_file: constant_identifier_names

class AppEndpoints {
  AppEndpoints._();
  static const String Authorization = 'Authorization';
  // receiveTimeout in seconds
  static const int receiveTimeout = 30;
  // connectTimeout in seconds
  static const int connectionTimeout = 30;

  static const String signUp = "/signup";
  static const String signIn = "/signin";
  static const String profile = "/profile";

  static const String plans = "/plans";
  static const String addCar = "/cars";
}
