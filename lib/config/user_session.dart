import 'package:edutec_hub/data/models/auth/auth_data.dart';
import 'package:edutec_hub/data/models/user_role.dart';

class UserSession {
  static final UserSession instance = UserSession._internal();

  UserSession._internal();

  int? _userId; // 登录返回的用户 ID
  int? _roleId; // 根据角色获取的特定 ID（如 student_id, teacher_id）
  String? _token;
  String? _refreshToken;
  UserRole? _userRole;
  DateTime? _expiresAt;
  DateTime? _refreshTokenExpiresAt;

  int? get userId => _userId;
  int? get roleId => _roleId;
  String? get token => _token;
  UserRole? get userRole => _userRole;
  DateTime? get expiresAt => _expiresAt;

  bool get isLoggedIn => _userId != null && _token != null;
  bool get isTokenExpired => _expiresAt?.isBefore(DateTime.now()) ?? true;

  void setSession({
    required AuthData authData,
    required UserRole role,
  }) {
    _userId = int.tryParse(authData.userId);
    _token = authData.accessToken;
    _refreshToken = authData.refreshToken;
    _userRole = role;
    _expiresAt = authData.expires;
    _refreshTokenExpiresAt = authData.refreshTokenExpires;
  }

  void setRoleId(int roleId) {
    _roleId = roleId;
  }

  void clearSession() {
    _userId = null;
    _roleId = null;
    _token = null;
    _refreshToken = null;
    _userRole = null;
    _expiresAt = null;
    _refreshTokenExpiresAt = null;
  }
}
