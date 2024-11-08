import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:edutec_hub/presentation/screens/student/contact_book/widgets/content_card.dart';
import 'package:flutter/material.dart';

class ContentList extends StatelessWidget {
  final List<ContentItem> contents;

  const ContentList({
    Key? key,
    required this.contents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: contents.length,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) => ContentCard(content: contents[index]),
    );
  }
}
