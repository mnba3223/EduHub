import 'package:edutec_hub/blocs/student_booking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:easy_localization/easy_localization.dart';

class PaymentCompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('payment_complete'.tr()),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, color: Colors.green, size: 64),
                SizedBox(height: 16),
                Text('payment_successful'.tr(), style: TextStyle(fontSize: 18)),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    context.read<BookingBloc>().add(CompletePayment());
                    context.go('/');
                  },
                  child: Text('return_to_booking'.tr()),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
