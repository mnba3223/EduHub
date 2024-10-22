import 'package:edutec_hub/blocs/student_booking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:easy_localization/easy_localization.dart';

class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('payment_method'.tr()),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('select_payment_method'.tr()),
            SizedBox(height: 16),
            _buildPaymentOption(context, 'credit_card'.tr()),
            _buildPaymentOption(context, 'paypal'.tr()),
            _buildPaymentOption(context, 'bank_transfer'.tr()),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOption(BuildContext context, String method) {
    return GestureDetector(
      onTap: () {
        context
            .read<BookingBloc>()
            .add(SelectPaymentMethod(paymentMethod: method));
        context.go('/payment-complete');
      },
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(method),
      ),
    );
  }
}
