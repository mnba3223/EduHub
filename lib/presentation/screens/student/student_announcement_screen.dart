import 'package:edutec_hub/state_management/blocs/announcements_state.dart';
import 'package:edutec_hub/state_management/cubit/announcement_cubit.dart';
import 'package:edutec_hub/data/models/announcement/announcement.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:easy_localization/easy_localization.dart';

class StudentAnnouncementsScreen extends StatelessWidget {
  const StudentAnnouncementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnnouncementsCubit()..loadAnnouncements(),
      child: const StudentAnnouncementsView(),
    );
  }
}

class StudentAnnouncementsView extends StatelessWidget {
  const StudentAnnouncementsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () =>
                  context.read<AnnouncementsCubit>().refreshAnnouncements(),
              child: _buildAnnouncementsList(),
            ),
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
                'announcements_screen_title'.tr(),
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

  Widget _buildAnnouncementsList() {
    return BlocBuilder<AnnouncementsCubit, AnnouncementsState>(
      builder: (context, state) {
        if (state is AnnouncementsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AnnouncementsError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.message),
                ElevatedButton(
                  onPressed: () {
                    context.read<AnnouncementsCubit>().loadAnnouncements();
                  },
                  child: Text('Retry'.tr()),
                ),
              ],
            ),
          );
        } else if (state is AnnouncementsLoaded) {
          if (state.announcements.isEmpty) {
            return Center(
              child: Text('No announcements found'.tr()),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.all(20.w),
            itemCount: state.announcements.length,
            itemBuilder: (context, index) {
              final announcement = state.announcements[index];
              return _buildAnnouncementItem(announcement);
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildAnnouncementItem(Announcement announcement) {
    return Card(
      margin: EdgeInsets.only(bottom: 15.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${announcement.title}',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              announcement.content,
              style: TextStyle(fontSize: 14.sp),
            ),
            if (announcement.uploadFile != null) ...[
              SizedBox(height: 10.h),
              Image.network(
                '${announcement.uploadFile}',
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error);
                },
              ),
            ],
            if (announcement.createdAt != null) ...[
              SizedBox(height: 10.h),
              Text(
                DateFormat('yyyy-MM-dd HH:mm').format(announcement.createdAt!),
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
