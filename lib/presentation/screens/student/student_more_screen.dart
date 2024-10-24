import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';

class StudentMoreScreen extends StatelessWidget {
  const StudentMoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: _buildMoreList(context),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'more'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMoreList(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.w),
      children: [
        _buildListItem(context, Icons.book, 'booking'.tr(), '/booking'),
        _buildListItem(context, Icons.settings, 'setting'.tr(), '/settings'),
        _buildListItem(context, Icons.assignment, 'homework'.tr(), '/homework'),
        _buildListItem(context, Icons.school, 'learning'.tr(), '/learning'),
        _buildListItem(context, Icons.picture_as_pdf, 'PP'.tr(), '/pp'),
        _buildListItem(context, Icons.description, 'T&C'.tr(), '/terms'),
        _buildListItem(
            context, Icons.contact_mail, 'contact_us'.tr(), '/contact'),
        _buildListItem(
            context, Icons.dashboard, 'bulletin_board'.tr(), '/bulletin'),
      ],
    );
  }

  Widget _buildListItem(
      BuildContext context, IconData icon, String title, String route) {
    return Card(
      margin: EdgeInsets.only(bottom: 15.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      elevation: 3,
      child: ListTile(
        leading: Icon(icon, size: 30.sp),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          // context.push(route);
        },
      ),
    );
  }
}
