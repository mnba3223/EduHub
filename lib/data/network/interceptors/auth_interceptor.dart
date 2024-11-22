import 'dart:async';
import 'package:dio/dio.dart';
import '../core/token_manager.dart';
import '../config/api_config.dart';

class AuthInterceptor extends QueuedInterceptor {
  final Dio dio;
  String? _accessToken;
  bool _isRefreshing = false;
  final _queue = <Map<String, dynamic>>[];

  AuthInterceptor(this.dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    bool isPublicPath = ApiConfig.isPublicPath(options.path);

    // 設置通用 headers
    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = '*/*';

    if (!isPublicPath) {
      if (_accessToken == null) {
        _accessToken = await TokenManager.getToken();
      }

      if (_accessToken != null) {
        options.headers['Authorization'] = 'Bearer $_accessToken';
      }
    } else {
      options.headers.remove('Authorization');
    }

    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      final options = err.requestOptions;

      if (_isRefreshing) {
        await _enqueueRequest(options, handler);
        return;
      }

      _isRefreshing = true;

      try {
        final newToken = await _refreshToken();
        if (newToken != null) {
          await TokenManager.saveToken(newToken);
          _accessToken = newToken;

          final response = await _retry(options);
          handler.resolve(response);

          await _processQueue();
        } else {
          await _handleRefreshFailure(handler, err);
        }
      } catch (e) {
        await _handleRefreshFailure(handler, err);
      } finally {
        _isRefreshing = false;
      }
    } else {
      return handler.next(err);
    }
  }

  Future<void> _enqueueRequest(
    RequestOptions options,
    ErrorInterceptorHandler handler,
  ) {
    final completer = Completer<void>();

    _queue.add({
      'options': options,
      'handler': handler,
      'completer': completer,
    });

    return completer.future;
  }

  Future<void> _processQueue() async {
    for (final request in _queue) {
      try {
        final response = await _retry(request['options'] as RequestOptions);
        (request['handler'] as ErrorInterceptorHandler).resolve(response);
      } catch (e) {
        (request['handler'] as ErrorInterceptorHandler).reject(
          DioException(
            requestOptions: request['options'] as RequestOptions,
            error: e,
          ),
        );
      } finally {
        (request['completer'] as Completer).complete();
      }
    }
    _queue.clear();
  }

  Future<Response<dynamic>> _retry(RequestOptions options) async {
    final clonedRequest = await dio.request(
      options.path,
      data: options.data,
      queryParameters: options.queryParameters,
      options: Options(
        method: options.method,
        headers: {
          ...options.headers,
          'Authorization': 'Bearer $_accessToken',
        },
      ),
    );

    return clonedRequest;
  }

  Future<String?> _refreshToken() async {
    try {
      final refreshToken = await TokenManager.getRefreshToken();
      if (refreshToken == null) return null;

      final response = await dio.post(
        '/refresh-token',
        data: {'refresh_token': refreshToken},
      );

      return response.data['token'];
    } catch (e) {
      return null;
    }
  }

  Future<void> _handleRefreshFailure(
    ErrorInterceptorHandler handler,
    DioException originalError,
  ) async {
    await TokenManager.clearTokens();

    _accessToken = null;

    for (final request in _queue) {
      (request['handler'] as ErrorInterceptorHandler).reject(originalError);
      (request['completer'] as Completer).complete();
    }
    _queue.clear();

    handler.reject(originalError);
  }
}
