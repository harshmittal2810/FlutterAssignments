import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiClient {
  final String baseUrl;
  final String apiKey;
  late final Dio _dio;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  ApiClient({required this.baseUrl, required this.apiKey}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 180),
        receiveTimeout: const Duration(seconds: 180),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "x-api-key": apiKey,
        },
      ),
    );
    _dio.interceptors.add(PrettyDioLogger());
  }

  Future<Response> get(String path) async =>
      _performRequest(() => _dio.get(path));

  Future<Response> post(String path, {Map<String, dynamic>? data}) async =>
      _performRequest(() => _dio.post(path, data: data));

  Future<Response> put(String path, {Map<String, dynamic>? data}) async =>
      _performRequest(() => _dio.put(path, data: data));

  Future<Response> delete(String path) async =>
      _performRequest(() => _dio.delete(path));

  Future<Response> _performRequest(Future<Response> Function() request) async {
    try {
      return await request();
    } catch (e) {
      throw Exception("Network error: $e");
    }
  }
}
