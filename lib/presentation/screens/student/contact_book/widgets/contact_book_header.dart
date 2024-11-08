import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:flutter/material.dart';

class ContactBookHeader extends StatelessWidget {
  final BasicInfo info;

  const ContactBookHeader({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            info.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            DateFormat('yyyy年MM月dd日 (E)', 'zh_TW').format(info.date),
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.person_outline, size: 16),
              const SizedBox(width: 4),
              Text(info.teacher),
              const SizedBox(width: 16),
              const Icon(Icons.access_time, size: 16),
              const SizedBox(width: 4),
              Text(DateFormat('yyyy/MM/dd HH:mm').format(info.postTime)),
            ],
          ),
        ],
      ),
    );
  }
}
