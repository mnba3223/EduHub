import 'dart:developer';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/user_role.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  final int userId;

  SignInSuccess({
    required this.jwtToken,
    required this.role,
    required this.userId,
  });

  @override
  List<Object?> get props => [jwtToken, role, userId];
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

      final roles = authData.data!.roles;
      if (roles.isEmpty) {
        throw ApiException('登入失敗：未設定用戶角色');
      }

      final userRole = _parseRole(roles);

      // 保存用戶session
      UserSession.instance.setSession(
        authData: authData.data!,
        role: userRole,
      );

      final roleId = authData.data!.userSpecificId;
      UserSession.instance.setRoleId(roleId);

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
    log('Parsing role: ${roleString.toLowerCase()}');
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
