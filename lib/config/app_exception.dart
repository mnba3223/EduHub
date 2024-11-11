import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';
part 'app_exception.g.dart';

@freezed
class AppException with _$AppException {
  const factory AppException({
    required String message,
    String? code,
    ErrorDetails? details,
  }) = _AppException;

  const factory AppException.network(
    String message, {
    @Default('NETWORK_ERROR') String code,
  }) = NetworkException;

  const factory AppException.unauthorized(
    String message, {
    @Default('UNAUTHORIZED') String code,
  }) = UnauthorizedException;

  const factory AppException.validation(
    String message, {
    @Default('VALIDATION_ERROR') String code,
    ErrorDetails? details,
  }) = ValidationException;

  const factory AppException.server(
    String message, {
    @Default('SERVER_ERROR') String code,
    ErrorDetails? details,
  }) = ServerException;
}

@freezed
class ErrorDetails with _$ErrorDetails {
  const factory ErrorDetails({
    String? field,
    String? reason,
  }) = _ErrorDetails;

  factory ErrorDetails.fromJson(Map<String, dynamic> json) =>
      _$ErrorDetailsFromJson(json);
}

extension DioExceptionHandler on DioException {
  AppException toAppException() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const AppException.network('網路連線逾時，請稍後再試');

      case DioExceptionType.badResponse:
        final responseData = response?.data;
        if (response?.statusCode == 401) {
          return const AppException.unauthorized('登入已過期，請重新登入');
        }

        // 處理新的 API 錯誤響應格式
        if (responseData is Map<String, dynamic>) {
          final apiResponse = ApiResponse<Map<String, dynamic>>.fromJson(
            responseData,
            (json) => json as Map<String, dynamic>,
          );

          // 檢查是否成功
          if (!apiResponse.success) {
            return AppException.server(
              apiResponse.message,
              code: apiResponse.code.toString(),
              details: ErrorDetails(
                reason: apiResponse.message,
              ),
            );
          }
        }

        // 如果無法解析為標準格式，返回通用錯誤
        return AppException.server(
          responseData is Map ? responseData['message'] ?? '未知錯誤' : '服務器錯誤',
          code: response!.statusCode.toString(),
        );

      case DioExceptionType.cancel:
        return const AppException.network('請求已取消');

      case DioExceptionType.badCertificate:
        return const AppException.network('安全證書驗證失敗');

      case DioExceptionType.connectionError:
        return const AppException.network('網路連線錯誤');

      case DioExceptionType.unknown:
      default:
        return const AppException.network('網路連線失敗，請檢查網路設定');
    }
  }
}

// 添加一個輔助方法來從 API 響應創建異常
extension ApiResponseErrorHandler on ApiResponse {
  AppException toAppException() {
    if (success) {
      throw ArgumentError('Cannot create exception from successful response');
    }

    return AppException.server(
      message,
      code: code.toString(),
      details: ErrorDetails(reason: message),
    );
  }
}
