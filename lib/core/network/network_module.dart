import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../data/endpoints/app_endpoints.dart';

abstract class NetworkModule {
  static Dio provideDio() {
    final dio = Dio();

    dio
      ..options.baseUrl = dotenv.get('BASE_URL')
      ..options.connectTimeout =
          const Duration(seconds: AppEndpoints.connectionTimeout)
      ..options.headers.putIfAbsent('Content-Type', () => 'application/json')
      ..options.receiveTimeout =
          const Duration(seconds: AppEndpoints.receiveTimeout);
    dio.interceptors.clear();

    dio.interceptors.addAll([
      AwesomeDioInterceptor(),
    ]);

    return dio;
  }
}
