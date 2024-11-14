import 'package:edutec_hub/config/user_session.dart';

import 'package:edutec_hub/data/models/user_role.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
// import 'package:edutec_hub/data/models/teacher/teacher.dart'; // 假设您有一个 Teacher 模型
import 'package:edutec_hub/data/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// enum LoginType { normal, student, parent, teacher }

abstract class SignInState extends Equatable {}

class SignInInitial extends SignInState {
  @override
  List<Object?> get props => [];
}

class SignInInProgress extends SignInState {
  @override
  List<Object?> get props => [];
}

class SignInSuccess extends SignInState {
  final String jwtToken;
  final UserRole role;
  final int userId; // 新增

  SignInSuccess({
    required this.jwtToken,
    required this.role,
    required this.userId, // 新增
  });

  @override
  List<Object?> get props => [jwtToken, role];
}

class SignInFailure extends SignInState {
  final String errorMessage;

  SignInFailure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class SignInCubit extends Cubit<SignInState> {
  final AuthRepository _authRepository;

  SignInCubit(this._authRepository) : super(SignInInitial());

  Future<void> signInUser({
    required String userId,
    required String password,
  }) async {
    emit(SignInInProgress());

    try {
      final authData = await _authRepository.signInNormal(
        userId: userId,
        password: password,
      );

      if (authData.data == null) {
        throw ApiException('登入失敗：未收到用戶資料');
      }

      // 從回傳資料中取得角色
      final roles = authData.data!.usertype;
      if (roles.isEmpty) {
        throw ApiException('登入失敗：未設定用戶角色');
      }

      // 使用第一個角色作為主要角色
      final userRole = _parseRole(roles);

      UserSession.instance.setSession(
        authData: authData.data!,
        role: userRole,
      );
      // 获取角色特定 ID
      final roleData = await _authRepository.getRoleData(
        userId: int.parse(authData.data!.userId),
        role: userRole,
      );
      UserSession.instance.setRoleId(roleData.roleId);
      emit(SignInSuccess(
        jwtToken: authData.data!.accessToken,
        role: userRole,
        userId: int.tryParse(authData.data!.userId) ?? 0,
      ));
    } on ApiException catch (e) {
      emit(SignInFailure(e.message));
    } catch (e) {
      emit(SignInFailure('登入失敗：${e.toString()}'));
    }
  }

  UserRole _parseRole(String roleString) {
    switch (roleString.toLowerCase()) {
      case 'student':
        return UserRole.student;
      case 'teacher':
        return UserRole.teacher;
      case 'parent':
        return UserRole.parent;
      default:
        return UserRole.unknown;
    }
  }

  @override
  Future<void> close() {
    UserSession.instance.clearSession();
    return super.close();
  }
}
