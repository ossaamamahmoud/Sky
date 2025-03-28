import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get(
      endpoint,
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
