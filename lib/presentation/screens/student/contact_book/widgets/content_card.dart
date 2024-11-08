import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:edutec_hub/presentation/screens/student/contact_book/widgets/thumbnail.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentCard extends StatelessWidget {
  final ContentItem content;

  const ContentCard({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    content.subject,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (content.teacher.isNotEmpty)
                  Text(
                    content.teacher,
                    style: const TextStyle(color: Colors.grey),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            ...content.items
                .map((item) => _buildContentDetailItem(item, context)),
          ],
        ),
      ),
    );
  }

  Widget _buildContentDetailItem(ContentDetail detail, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (detail.type == 'text') Text(detail.content),
          if (detail.type == 'list') ..._buildListItems(detail.content),
          if (detail.type == 'homework') _buildHomeworkBox(detail, context),
          if (detail.type == 'images' && detail.images != null)
            _buildImagesGrid(detail.images!),
        ],
      ),
    );
  }

  List<Widget> _buildListItems(String content) {
    return content
        .split('\n')
        .map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• '),
                  Expanded(child: Text(item)),
                ],
              ),
            ))
        .toList();
  }

  Widget _buildHomeworkBox(ContentDetail detail, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.amber.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.amber),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.assignment, color: Colors.amber),
              const SizedBox(width: 8),
              Text(
                'homework'.tr(),
                style: TextStyle(
                  color: Colors.amber[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(detail.content),
          if (detail.dueDate != null)
            Text(
              'due_date'
                  .tr(args: [DateFormat('MM/dd (E)').format(detail.dueDate!)]),
              style: const TextStyle(color: Colors.red),
            ),
        ],
      ),
    );
  }

  Widget _buildImagesGrid(List<ImageItem> images) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) => ImageThumbnail(
        imageUrl: images[index].url,
        thumbnailUrl: images[index].thumbnail,
      ),
    );
  }
}
