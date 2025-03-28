import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sky/core/networking/api_constants.dart';

// Applying Singleton pattern
class DioFactory {
  // Private static instance
  static final DioFactory _instance = DioFactory._init();

  // Dio instance
  late final Dio _dio;

  // Factory constructor returns the same instance every time
  factory DioFactory() {
    return _instance;
  }

  // Private named constructor
  DioFactory._init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    // Adding interceptors
    _dio.interceptors.add(
      PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: false,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90,
          enabled: kDebugMode,
          filter: (options, args) {
            // don't print requests with uris containing '/posts'
            if (options.path.contains('/posts')) {
              return false;
            }
            // don't print responses with unit8 list data
            return !args.isResponse || !args.hasUint8ListData;
          }),
    );
  }
  Dio get dio => _dio;
}
