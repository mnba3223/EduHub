import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/calendar/calendar_date.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book.dart';
import 'package:edutec_hub/data/network/apis/contact_book/contact_book_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:table_calendar/table_calendar.dart';

class ContactBookRepository {
  final SignInCubit signInCubit;
  final api = ContactBookApi(DioClient().dio);
  final bool useMock;

  ContactBookRepository({
    required this.signInCubit,
    this.useMock = false,
  });

  int get _studentId {
    final state = signInCubit.state;
    if (state is SignInSuccess) {
      return state.userId;
    }
    throw ApiException('User not logged in');
  }

  Future<ApiResponse<List<ContactBook>>> getContactBooks({
    required DateTime date,
  }) async {
    if (useMock) {
      return _getMockContactBooks(date);
    }

    try {
      final response = await api.getContactBooks(
        _studentId.toString(),
        date.toIso8601String(),
      );
      return response;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<ApiResponse<ContactBookDetail>> getDailyContactBook({
    required DateTime date,
  }) async {
    if (useMock) {
      return _getMockDailyContactBook(date);
    }

    try {
      final response = await api.getDailyContactBook(
        _studentId.toString(),
        date.toIso8601String(),
      );
      return response;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  ApiResponse<List<ContactBook>> _getMockContactBooks(DateTime date) {
    final monthStart = DateTime(date.year, date.month, 1);
    final daysInMonth = DateTime(date.year, date.month + 1, 0).day;
    final today = DateTime.now();

    final contactBooks = List.generate(daysInMonth, (index) {
      final currentDate = DateTime(date.year, date.month, index + 1);
      final hasBook =
          currentDate.isBefore(today) || isSameDay(currentDate, today);
      final isSigned = hasBook &&
          currentDate.isBefore(today.subtract(const Duration(days: 2)));

      return ContactBook(
        studentInfo: StudentInfo(
          name: "Test Student",
          className: "Kindy A",
          classTeacher: "Ms. Ariel",
        ),
        calendar: CalendarData(
          currentDate: currentDate,
          dateRange: DateRange(
            start: monthStart,
            end: DateTime(date.year, date.month + 1, 0),
          ),
          dates: [
            if (hasBook)
              CalendarDate(
                date: currentDate,
                dayOfWeek: _getDayOfWeek(currentDate),
                hasContactBook: true,
                isSigned: isSigned,
                preview: PreviewInfo(
                  title: "每日進度 ${currentDate.day}日",
                  classType: "Kindy",
                  hasHomework: true,
                  hasAnnouncement: index % 3 == 0,
                  subjects: _getMockSubjects(index),
                ),
              ),
          ],
        ),
        contactBooks: [],
        statistics: Statistics(
          totalBooks: daysInMonth,
          signedCount: (daysInMonth * 0.7).round(),
          unsignedCount: (daysInMonth * 0.3).round(),
        ),
      );
    });

    return ApiResponse(
      status: 'success',
      message: 'Success',
      data: contactBooks,
    );
  }

  List<String> _getMockSubjects(int index) {
    final allSubjects = [
      "English",
      "Math",
      "Art",
      "Music",
      "Science",
      "PE",
      "Chinese"
    ];
    final count = (index % 3) + 2; // 2-4 個科目
    return allSubjects.take(count).toList();
  }

  ApiResponse<ContactBookDetail> _getMockDailyContactBook(DateTime date) {
    final today = DateTime.now();
    final isToday = isSameDay(date, today);
    final isPast = date.isBefore(today);

    if (!isPast && !isToday) {
      throw ApiException('Future dates are not available');
    }

    return ApiResponse(
      status: 'success',
      message: 'Success',
      data: ContactBookDetail(
        basicInfo: BasicInfo(
          date: date,
          dayOfWeek: _getDayOfWeek(date),
          title: '每日進度 ${date.day}日',
          classType: 'Kindy',
          teacher: 'Ms. Ariel',
          postTime: DateTime(date.year, date.month, date.day, 17, 30),
        ),
        contents: _getMockContents(date),
        announcements: _getMockAnnouncements(date),
        signatureStatus: SignatureStatus(
          isSigned:
              isPast && date.isBefore(today.subtract(const Duration(days: 2))),
          signTime: isPast ? date.add(const Duration(hours: 20)) : null,
          comments: isPast ? ['已確認'] : [],
        ),
      ),
    );
  }

  List<ContentItem> _getMockContents(DateTime date) {
    return [
      ContentItem(
        type: 'course',
        subject: 'English',
        teacher: 'Ms. Ariel',
        items: [
          ContentDetail(
            type: 'text',
            content:
                '今日課程重點：\n1. Phonics: 複習字母發音\n2. Vocabulary: 水果單字\n3. Story Time: The Very Hungry Caterpillar',
          ),
          ContentDetail(
            type: 'homework',
            content: 'Phonics worksheet pages 12-13',
            dueDate: date.add(const Duration(days: 2)),
          ),
        ],
      ),
      ContentItem(
        type: 'course',
        subject: 'Math',
        teacher: 'Ms. Betty',
        items: [
          ContentDetail(
            type: 'text',
            content: '數學課程內容：\n1. 數字1-20練習\n2. 基礎加法概念\n3. 圖形分類遊戲',
          ),
        ],
      ),
      ContentItem(
        type: 'activity',
        subject: 'Art',
        teacher: 'Ms. Carol',
        items: [
          ContentDetail(
            type: 'text',
            content: '今日美勞作品：水果拼貼',
          ),
          ContentDetail(
            type: 'images',
            content: '',
            images: List.generate(
              3,
              (index) => ImageItem(
                url: 'https://picsum.photos/400/300?random=$index',
                thumbnail: 'https://picsum.photos/100/75?random=$index',
              ),
            ),
          ),
        ],
      ),
    ];
  }

  List<Announcement> _getMockAnnouncements(DateTime date) {
    if (date.day % 3 == 0) {
      return [
        Announcement(
          type: 'notice',
          title: '${date.month}月份教學活動通知',
          content: '親愛的家長您好：\n本月將舉辦戶外教學活動...',
          link: 'https://example.com/notice',
        ),
      ];
    }
    return [];
  }

  String _getDayOfWeek(DateTime date) {
    final weekdays = ['一', '二', '三', '四', '五', '六', '日'];
    return '星期${weekdays[date.weekday - 1]}';
  }

  Future<void> signContactBook({
    required DateTime date,
    String? comment,
  }) async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      return;
    }

    // 實際 API 實作
  }
}
