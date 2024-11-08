// lib/presentation/screens/contact_book/contact_book_detail_screen.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:edutec_hub/presentation/screens/student/contact_book/widgets/contact_book_content.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/blocs/contact_book/contact_book_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  final TextEditingController _replyController = TextEditingController();
  final TextEditingController _signController = TextEditingController();

  @override
  void dispose() {
    _replyController.dispose();
    _signController.dispose();
    super.dispose();
  }

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
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              _buildSliverTopBar(context, state),
            ],
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
                          child: Text('retry'.tr()),
                        ),
                      ],
                    ),
                  );
                }

                if (state is ContactBookDetailLoaded) {
                  return _buildDetailContent(context, state.detail);
                }

                return const SizedBox();
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildDetailContent(BuildContext context, ContactBookDetail detail) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ContactBookContent(
            detail: detail,
            onReply: (BuildContext) {},
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // 回覆區塊
                _buildReplySection(detail),
                const SizedBox(height: 16),
                // 簽名區塊（如果未簽名）
                if (!detail.signatureStatus.isSigned) _buildSignSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReplySection(ContactBookDetail detail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // 回覆輸入區
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Text(
                  'contact_book_reply'.tr(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: _replyController,
                      decoration: InputDecoration(
                        hintText: 'reply_placeholder'.tr(),
                        border: const OutlineInputBorder(),
                      ),
                      maxLines: 3,
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        final reply = _replyController.text.trim();
                        if (reply.isNotEmpty) {
                          context.read<ContactBookBloc>().add(
                                ReplyContactBook(
                                  date: widget.date,
                                  message: reply,
                                ),
                              );
                          _replyController.clear();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: Text('send_reply'.tr()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // 歷史回覆記錄
        if (detail.signatureStatus.comments.isNotEmpty) ...[
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  child: Text(
                    'reply_history'.tr(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: detail.signatureStatus.comments.length,
                  separatorBuilder: (context, index) => Divider(
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(detail.signatureStatus.comments[index]),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildSignSection() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber.shade200),
        borderRadius: BorderRadius.circular(8),
        color: Colors.amber.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.amber.shade100,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(7),
              ),
            ),
            child: Text(
              'sign_section_title'.tr(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _signController,
                  decoration: InputDecoration(
                    hintText: 'sign_comment_hint'.tr(),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    context.read<ContactBookBloc>().add(
                          SignContactBook(
                            date: widget.date,
                            comment: _signController.text.trim(),
                          ),
                        );
                    _signController.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade400,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: Text('sign_confirm'.tr()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverTopBar(BuildContext context, ContactBookState state) {
    return SliverAppBar(
      expandedHeight: 130.h,
      floating: false,
      pinned: true,
      flexibleSpace: FixedHeightSmoothTopBarV2(
        height: 130.h,
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'contact_book_detail'.tr(),
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
      ),
    );
  }
}
