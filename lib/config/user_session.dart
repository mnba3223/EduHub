import 'package:edutec_hub/data/models/user_role.dart';

class UserSession {
  static final UserSession instance = UserSession._internal();

  UserSession._internal();

  int? _userId;
  String? _token;
  UserRole? _userRole;

  int? get userId => _userId;
  String? get token => _token;
  UserRole? get userRole => _userRole;

  bool get isLoggedIn => _userId != null && _token != null;

  void setSession({
    required int userId,
    required String token,
    required UserRole role,
  }) {
    _userId = userId;
    _token = token;
    _userRole = role;
  }

  void clearSession() {
    _userId = null;
    _token = null;
    _userRole = null;
  }
}
