import 'package:edutec_hub/blocs/student_booking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:easy_localization/easy_localization.dart';

class BookingInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        if (state is TimeSlotSelected) {
          return Scaffold(
            appBar: AppBar(
              title: Text('booking_info'.tr()),
            ),
            body: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('selected_date'.tr() +
                      ': ${DateFormat('yyyy-MM-dd').format(state.selectedDay)}'),
                  SizedBox(height: 8),
                  Text('selected_time'.tr() + ': ${state.selectedTime}'),
                  SizedBox(height: 8),
                  Text('classroom'.tr() + ': ${state.classroom}'),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.go('/payment-method'),
                    child: Text('proceed_to_payment'.tr()),
                  ),
                ],
              ),
            ),
          );
        } else {
          // Handle unexpected state
          return Scaffold(
            body: Center(child: Text('unexpected_error'.tr())),
          );
        }
      },
    );
  }
}
