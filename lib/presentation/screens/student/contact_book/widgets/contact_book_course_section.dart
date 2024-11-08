import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';

import 'package:edutec_hub/presentation/screens/student/contact_book/widgets/content_list.dart';
import 'package:flutter/material.dart';

class ContactBookCourseSection extends StatelessWidget {
  final String title;
  final List<ContentItem> contents;

  const ContactBookCourseSection({
    Key? key,
    required this.title,
    required this.contents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ContentList(contents: contents),
        ],
      ),
    );
  }
}
