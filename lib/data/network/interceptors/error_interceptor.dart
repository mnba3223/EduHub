import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../core/exceptions.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      log("=== API Error Details ===");
      log("URL: ${err.requestOptions.uri}");
      log("Method: ${err.requestOptions.method}");
      log("Headers: ${err.requestOptions.headers}");
      log("Error Type: ${err.type}");
      log("Status Code: ${err.response?.statusCode}");
      log("Response Data: ${err.response?.data}");
      log("Error Message: ${err.message}");
      log("=====================");
    }

    String errorMessage;
    try {
      final responseData = err.response?.data;
      if (responseData != null && responseData is Map) {
        errorMessage = responseData['message'] ?? '未知錯誤';
      } else if (err.type == DioExceptionType.connectionTimeout) {
        errorMessage = '連接超時';
      } else if (err.type == DioExceptionType.connectionError) {
        errorMessage = '無法連接到伺服器';
      } else {
        errorMessage = '發生錯誤: ${err.message}';
      }
    } catch (e) {
      errorMessage = '處理錯誤時發生異常';
    }

    handler.next(DioException(
      requestOptions: err.requestOptions,
      error: ApiException(errorMessage),
      type: err.type,
      response: err.response,
    ));
  }
}
