import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../config/api_config.dart';
import '../interceptors/auth_interceptor.dart';
import '../interceptors/error_interceptor.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late final Dio _dio;

  DioClient._internal() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: ApiConfig.connectTimeout,
      receiveTimeout: ApiConfig.receiveTimeout,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      // headers: {
      //   'Accept': '*/*',
      //   'Content-Type': 'application/json',
      // },
    ));
    _initializeInterceptors();
  }

  // void _initializeInterceptors() {
  //   _dio.interceptors.addAll([
  //     AuthInterceptor(_dio),
  //     ErrorInterceptor(),
  //     if (kDebugMode)
  //       LogInterceptor(
  //         request: true,
  //         requestHeader: true,
  //         requestBody: true,
  //         responseHeader: true,
  //         responseBody: true,
  //         error: true,
  //       ),
  //   ]);
  // }
  void _initializeInterceptors() {
    _dio.interceptors.addAll([
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // 確保基本請求頭存在
          options.headers.addAll({
            'Accept': '*/*',
            'Content-Type': 'application/json',
          });

          debugPrint('Request Headers: ${options.headers}');
          debugPrint('Request Path: ${options.path}');

          return handler.next(options);
        },
      ),
      if (kDebugMode)
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
          logPrint: (object) {
            debugPrint('DIO LOG: $object');
          },
        ),
    ]);
  }

  Dio get dio => _dio;
}
