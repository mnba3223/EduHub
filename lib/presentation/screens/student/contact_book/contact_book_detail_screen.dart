import 'package:easy_localization/easy_localization.dart';

import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';

import 'package:edutec_hub/state_management/blocs/contact_book/contact_book_bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBookDetailScreen extends StatefulWidget {
  final DateTime date;

  const ContactBookDetailScreen({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  State<ContactBookDetailScreen> createState() =>
      _ContactBookDetailScreenState();
}

class _ContactBookDetailScreenState extends State<ContactBookDetailScreen> {
  @override
  void initState() {
    super.initState();
    _loadContactBookDetail();
  }

  void _loadContactBookDetail() {
    context.read<ContactBookBloc>().add(
          LoadDailyContactBook(date: widget.date),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBookBloc, ContactBookState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('每日聯絡簿'),
            actions: [
              if (state is ContactBookDetailLoaded &&
                  !state.detail.signatureStatus.isSigned)
                TextButton(
                  onPressed: () => _showSignDialog(context),
                  child: const Text('簽名'),
                ),
            ],
          ),
          body: Builder(
            builder: (context) {
              if (state is ContactBookLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state is ContactBookError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.message),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _loadContactBookDetail,
                        child: const Text('重試'),
                      ),
                    ],
                  ),
                );
              }

              if (state is ContactBookDetailLoaded) {
                return RefreshIndicator(
                  onRefresh: () async => _loadContactBookDetail(),
                  child: _ContactBookContent(detail: state.detail),
                );
              }

              return const SizedBox();
            },
          ),
        );
      },
    );
  }

  void _showSignDialog(BuildContext context) {
    final commentController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('簽名確認'),
        content: TextField(
          controller: commentController,
          decoration: const InputDecoration(
            labelText: '備註（選填）',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<ContactBookBloc>().add(
                    SignContactBook(
                      date: widget.date,
                      comment: commentController.text.trim(),
                    ),
                  );
              context.pop();
            },
            child: const Text('確認'),
          ),
        ],
      ),
    );
  }
}

// 分離內容組件以提高可維護性
class _ContactBookContent extends StatelessWidget {
  final ContactBookDetail detail;

  const _ContactBookContent({
    Key? key,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 今日課程框
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '今日課程',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _ContentsList(contents: detail.contents),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                if (detail.announcements.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  _AnnouncementsCard(announcements: detail.announcements),
                ],
                if (!detail.signatureStatus.isSigned) ...[
                  const SizedBox(height: 16),
                  const _SignatureReminderCard(),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            detail.basicInfo.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            DateFormat('yyyy年MM月dd日 (E)', 'zh_TW')
                .format(detail.basicInfo.date),
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
              Text(detail.basicInfo.teacher),
              const SizedBox(width: 16),
              const Icon(Icons.access_time, size: 16),
              const SizedBox(width: 4),
              Text(DateFormat('yyyy/MM/dd HH:mm')
                  .format(detail.basicInfo.postTime)),
            ],
          ),
        ],
      ),
    );
  }
}

class _BasicInfoCard extends StatelessWidget {
  final BasicInfo info;

  const _BasicInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('班級：${info.classType}'),
            const SizedBox(height: 8),
            Text('老師：${info.teacher}'),
            const SizedBox(height: 8),
            Text('發佈時間：${DateFormat('MM/dd HH:mm').format(info.postTime)}'),
          ],
        ),
      ),
    );
  }
}

class _ContentsList extends StatelessWidget {
  final List<ContentItem> contents;

  const _ContentsList({
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
      itemBuilder: (context, index) => _ContentCard(content: contents[index]),
    );
  }
}

class _ContentCard extends StatelessWidget {
  final ContentItem content;

  const _ContentCard({
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
            ...content.items.map((item) => _ContentDetailItem(detail: item)),
          ],
        ),
      ),
    );
  }
}

class _ContentDetailItem extends StatelessWidget {
  final ContentDetail detail;

  const _ContentDetailItem({
    Key? key,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (detail.type == 'text') Text(detail.content),
          if (detail.type == 'list') ..._buildListItems(detail.content),
          if (detail.type == 'homework') _buildHomeworkBox(context),
          if (detail.type == 'images' && detail.images != null)
            _buildImagesGrid(),
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

  Widget _buildHomeworkBox(BuildContext context) {
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
                '作業',
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
              '繳交期限：${DateFormat('MM/dd (E)').format(detail.dueDate!)}',
              style: const TextStyle(color: Colors.red),
            ),
        ],
      ),
    );
  }

  Widget _buildImagesGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: detail.images!.length,
      itemBuilder: (context, index) => _ImageThumbnail(
        imageUrl: detail.images![index].url,
        thumbnailUrl: detail.images![index].thumbnail,
      ),
    );
  }
}

class _ImageThumbnail extends StatelessWidget {
  final String imageUrl;
  final String thumbnailUrl;

  const _ImageThumbnail({
    Key? key,
    required this.imageUrl,
    required this.thumbnailUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        thumbnailUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[200],
            child: const Icon(Icons.broken_image),
          );
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            color: Colors.grey[200],
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}

class _AnnouncementsCard extends StatelessWidget {
  final List<Announcement> announcements;

  const _AnnouncementsCard({
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
            const Text(
              '公告事項',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ...announcements.map((announcement) => ListTile(
                  title: Text(announcement.title),
                  subtitle: Text(announcement.content),
                  onTap: announcement.link?.isNotEmpty == true
                      ? () => launchUrl(Uri.parse(announcement.link!))
                      : null,
                )),
          ],
        ),
      ),
    );
  }
}

class _SignatureReminderCard extends StatelessWidget {
  const _SignatureReminderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.warning),
            SizedBox(width: 8),
            Text('請記得簽名確認'),
          ],
        ),
      ),
    );
  }
}
