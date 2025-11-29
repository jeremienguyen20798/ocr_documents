import 'dart:async';

import 'package:dio/dio.dart';

class DioConfigs {
  late Dio _dio;

  FutureOr<Dio> dioConfigs(String baseUrl) {
    _dio = Dio();
    final baseOptions = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );
    _dio.options = baseOptions;
    return _dio;
  }
}
