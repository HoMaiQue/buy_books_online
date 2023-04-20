import 'package:dio/dio.dart';

class ApiClient {
  static final BaseOptions _options = BaseOptions(
    baseUrl: "http://localhost:8000",
    connectTimeout: const Duration(seconds: 5000),
    receiveTimeout: const Duration(seconds: 3000),
  );

  static final Dio _dio = Dio(_options);
  ApiClient._internal() {
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }
  static final ApiClient instance = ApiClient._internal();
  Dio get dio => _dio;
}
