import 'package:edutec_hub/config/environment.dart';

class ApiConfig {
  static const Duration connectTimeout = Duration(seconds: 5);
  static const Duration receiveTimeout = Duration(seconds: 10);

  static const String baseUrl = LunchEnvironment.baseUrl;
  static const String apiUrl = '$baseUrl/api/';
  static const String databaseUrl = '$baseUrl/database/';

  static final List<String> publicPaths = [
    '/api/Login',
    '/login',
    '/api/School',
  ];

  static bool isPublicPath(String path) {
    return publicPaths.any((publicPath) => path.endsWith(publicPath));
  }
}
