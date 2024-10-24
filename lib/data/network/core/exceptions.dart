import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiException implements Exception {
  final String message;
  final String? errorCode;
  final dynamic errorDetails;

  ApiException(
    this.message, {
    this.errorCode,
    this.errorDetails,
  });

  @override
  String toString() =>
      ' $message${errorCode != null ? ' (Code: $errorCode)' : ''}';
}

extension DioErrorHandler on DioException {
  ApiException toApiException() {
    if (kDebugMode) {
      log("$error");
      log("${response}}");
    }
    final responseData = response?.data;
    final message = responseData is Map ? responseData['message'] : '未知錯誤';
    return ApiException(message);
  }
}
