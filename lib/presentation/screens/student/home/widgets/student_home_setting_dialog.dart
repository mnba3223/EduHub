import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';

class StudentHomeSettingDialog extends StatelessWidget {
  const StudentHomeSettingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                // Close the dialog
                Navigator.of(context).pop();

                // Clear the session and navigate to login
                context.read<SignInCubit>().logout();
                context.go('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
