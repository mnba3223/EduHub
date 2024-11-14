import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/announcement/announcement.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:flutter/material.dart';

class AnnouncementsCard extends StatelessWidget {
  final List<ContactBookAnnouncement> announcements;

  const AnnouncementsCard({
    Key? key,
    required this.announcements,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'bulletin_board'.tr(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ...announcements.map((announcement) => ListTile(
                  title: Text(announcement.title ?? ''),
                  subtitle: Text(announcement.content),
                  // onTap: announcement.link?.isNotEmpty == true
                  //     ? () => launchUrl(Uri.parse(announcement.link!))
                  //     : null,
                )),
          ],
        ),
      ),
    );
  }
}
