import 'package:edutec_hub/data/models/parent/parent.dart';
import 'package:edutec_hub/data/models/student/student.dart';
// import 'package:edutec_hub/data/models/teacher/teacher.dart'; // 假设您有一个 Teacher 模型
import 'package:edutec_hub/data/repositories/authRepository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// enum LoginType { normal, student, parent, teacher }
enum UserRole { student, teacher, parent, unknown }

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
      final result = await _authRepository.signInNormal(
        userId: userId,
        password: password,
      );

      final role = _parseRole(result.role);

      emit(SignInSuccess(
          jwtToken: result.token, role: role, userId: result.data?.id ?? 0));
    } catch (e) {
      emit(SignInFailure(e.toString()));
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
}
