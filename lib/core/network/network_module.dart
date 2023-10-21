import 'package:dio/dio.dart';

import '../../data/endpoints/app_endpoints.dart';

abstract class NetworkModule {
  static Dio provideDio() {
    final dio = Dio();

    dio
      ..options.baseUrl = AppEndpoints.BASE_URL
      ..options.connectTimeout =
          const Duration(seconds: AppEndpoints.connectionTimeout)
      ..options.headers.putIfAbsent('Content-Type', () => 'application/json')
      ..options.receiveTimeout =
          const Duration(seconds: AppEndpoints.receiveTimeout);
    dio.interceptors.clear();

    dio.interceptors.addAll([
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
        requestHeader: true,
        error: true,
        responseHeader: true,
      ),
    ]);

    return dio;
  }
}
