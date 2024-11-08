import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:edutec_hub/presentation/screens/student/contact_book/widgets/announcements_card.dart';
import 'package:edutec_hub/presentation/screens/student/contact_book/widgets/contact_book_course_section.dart';
import 'package:edutec_hub/presentation/screens/student/contact_book/widgets/contact_book_header.dart';

import 'package:edutec_hub/presentation/screens/student/contact_book/widgets/signature_reminder_card.dart';
import 'package:flutter/material.dart';

class ContactBookContent extends StatelessWidget {
  final ContactBookDetail detail;
  final Function(BuildContext) onReply;

  const ContactBookContent({
    Key? key,
    required this.detail,
    required this.onReply,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContactBookHeader(info: detail.basicInfo),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactBookCourseSection(
                  title: 'todays_course'.tr(),
                  contents: detail.contents,
                ),
                if (detail.announcements.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  AnnouncementsCard(announcements: detail.announcements),
                ],
                if (!detail.signatureStatus.isSigned) ...[
                  const SizedBox(height: 16),
                  const SignatureReminderCard(),
                ],
                const SizedBox(height: 16),
                // ContactBookReplySection(
                //   onReply: onReply,
                //   comments: detail.signatureStatus.comments,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
