// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _TeacherApi implements TeacherApi {
  _TeacherApi(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ApiResponse<Teacher>> getTeacherByUserId(int userId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<Teacher>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/Teacher/user/${userId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<Teacher> _value;
    try {
      _value = ApiResponse<Teacher>.fromJson(
        _result.data!,
        (json) => Teacher.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<TeacherHomeworkListItem>>> getTeacherHomeworks(
    int teacherId, {
    String? startTime,
    String? endTime,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'teacherId': teacherId,
      r'startTime': startTime,
      r'endTime': endTime,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ApiResponse<List<TeacherHomeworkListItem>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Homework',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<TeacherHomeworkListItem>> _value;
    try {
      _value = ApiResponse<List<TeacherHomeworkListItem>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<TeacherHomeworkListItem>((i) =>
                    TeacherHomeworkListItem.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<TeacherHomeworkSubmission>>> getHomeworkSubmissions(
      int homeworkId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ApiResponse<List<TeacherHomeworkSubmission>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Homework/submissions/${homeworkId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<TeacherHomeworkSubmission>> _value;
    try {
      _value = ApiResponse<List<TeacherHomeworkSubmission>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<TeacherHomeworkSubmission>((i) =>
                    TeacherHomeworkSubmission.fromJson(
                        i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<TeacherExam>>> getTeacherExams(
    int teacherId, {
    String? startTime,
    String? endTime,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'teacherId': teacherId,
      r'startTime': startTime,
      r'endTime': endTime,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<List<TeacherExam>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/Exam',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<TeacherExam>> _value;
    try {
      _value = ApiResponse<List<TeacherExam>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<TeacherExam>(
                    (i) => TeacherExam.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<TeacherExam>> createExam({
    required String lessonId,
    required String examName,
    required String examDescription,
    required String examDate,
    File? uploadedFile,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'lesson_id',
      lessonId,
    ));
    _data.fields.add(MapEntry(
      'exam_name',
      examName,
    ));
    _data.fields.add(MapEntry(
      'exam_description',
      examDescription,
    ));
    _data.fields.add(MapEntry(
      'exam_date',
      examDate,
    ));
    if (uploadedFile != null) {
      _data.files.add(MapEntry(
        'UploadedFile',
        MultipartFile.fromFileSync(
          uploadedFile.path,
          filename: uploadedFile.path.split(Platform.pathSeparator).last,
        ),
      ));
    }
    final _options = _setStreamType<ApiResponse<TeacherExam>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          '/api/Exam',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<TeacherExam> _value;
    try {
      _value = ApiResponse<TeacherExam>.fromJson(
        _result.data!,
        (json) => TeacherExam.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<TeacherExam>> updateExam(
    int examId, {
    required String examName,
    required String examDescription,
    required String examDate,
    File? uploadedFile,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'exam_name',
      examName,
    ));
    _data.fields.add(MapEntry(
      'exam_description',
      examDescription,
    ));
    _data.fields.add(MapEntry(
      'exam_date',
      examDate,
    ));
    if (uploadedFile != null) {
      _data.files.add(MapEntry(
        'UploadedFile',
        MultipartFile.fromFileSync(
          uploadedFile.path,
          filename: uploadedFile.path.split(Platform.pathSeparator).last,
        ),
      ));
    }
    final _options = _setStreamType<ApiResponse<TeacherExam>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          '/api/Exam/${examId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<TeacherExam> _value;
    try {
      _value = ApiResponse<TeacherExam>.fromJson(
        _result.data!,
        (json) => TeacherExam.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<dynamic>> deleteExam(int examId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<dynamic>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/Exam/${examId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<dynamic> _value;
    try {
      _value = ApiResponse<dynamic>.fromJson(
        _result.data!,
        (json) => json as dynamic,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<TeacherExamRegistration>>> getExamRegistrations(
      int examId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ApiResponse<List<TeacherExamRegistration>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/Exam/registrations/${examId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<TeacherExamRegistration>> _value;
    try {
      _value = ApiResponse<List<TeacherExamRegistration>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<TeacherExamRegistration>((i) =>
                    TeacherExamRegistration.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<dynamic>> gradeExam(
    int registrationId,
    int score,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'score',
      score.toString(),
    ));
    final _options = _setStreamType<ApiResponse<dynamic>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          '/api/Exam/registrations/teacher/${registrationId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<dynamic> _value;
    try {
      _value = ApiResponse<dynamic>.fromJson(
        _result.data!,
        (json) => json as dynamic,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<dynamic>> gradeSubmission(
    int submissionId,
    String? comment,
    int? rating,
    String? status,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (comment != null) {
      _data.fields.add(MapEntry(
        'comment',
        comment,
      ));
    }
    if (rating != null) {
      _data.fields.add(MapEntry(
        'rating',
        rating.toString(),
      ));
    }
    if (status != null) {
      _data.fields.add(MapEntry(
        'status',
        status,
      ));
    }
    final _options = _setStreamType<ApiResponse<dynamic>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          '/api/Homework/submissions/teacher/${submissionId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<dynamic> _value;
    try {
      _value = ApiResponse<dynamic>.fromJson(
        _result.data!,
        (json) => json as dynamic,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<Lesson>>> getTeacherLessons(int teacherId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'teacherId': teacherId};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<List<Lesson>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/Lessons',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<Lesson>> _value;
    try {
      _value = ApiResponse<List<Lesson>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<Lesson>((i) => Lesson.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<LessonStudent>>> getLessonStudents(
      int lessonId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lessonId': lessonId};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<List<LessonStudent>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/Lessons/lessonGetStudent',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<LessonStudent>> _value;
    try {
      _value = ApiResponse<List<LessonStudent>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<LessonStudent>(
                    (i) => LessonStudent.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<dynamic>> createHomework({
    required int lessonId,
    required String homeworkDescription,
    String? homeworkStartTime,
    String? homeworkEndTime,
    File? uploadedFile,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'lesson_id',
      lessonId.toString(),
    ));
    _data.fields.add(MapEntry(
      'homework_description',
      homeworkDescription,
    ));
    if (homeworkStartTime != null) {
      _data.fields.add(MapEntry(
        'homework_start_time',
        homeworkStartTime,
      ));
    }
    if (homeworkEndTime != null) {
      _data.fields.add(MapEntry(
        'homework_end_time',
        homeworkEndTime,
      ));
    }
    if (uploadedFile != null) {
      _data.files.add(MapEntry(
        'UploadedFile',
        MultipartFile.fromFileSync(
          uploadedFile.path,
          filename: uploadedFile.path.split(Platform.pathSeparator).last,
        ),
      ));
    }
    final _options = _setStreamType<ApiResponse<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          '/api/Homework',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<dynamic> _value;
    try {
      _value = ApiResponse<dynamic>.fromJson(
        _result.data!,
        (json) => json as dynamic,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<TeacherContactBook>>> getContactBooks({
    String? startDate,
    String? endDate,
    int? studentId,
    int? teacherId,
    int? lessonId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'startDate': startDate,
      r'endDate': endDate,
      r'studentId': studentId,
      r'teacherId': teacherId,
      r'lessonId': lessonId,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ApiResponse<List<TeacherContactBook>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/ContactBook',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<TeacherContactBook>> _value;
    try {
      _value = ApiResponse<List<TeacherContactBook>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<TeacherContactBook>((i) =>
                    TeacherContactBook.fromJson(i as Map<String, dynamic>))
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<TeacherContactBook>> createContactBook(
      Map<String, dynamic> data) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(data);
    final _options = _setStreamType<ApiResponse<TeacherContactBook>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/ContactBook',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<TeacherContactBook> _value;
    try {
      _value = ApiResponse<TeacherContactBook>.fromJson(
        _result.data!,
        (json) => TeacherContactBook.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<TeacherContactBook>> updateContactBook(
    int contactBookId,
    Map<String, String> data,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(data);
    final _options = _setStreamType<ApiResponse<TeacherContactBook>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/ContactBook/${contactBookId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<TeacherContactBook> _value;
    try {
      _value = ApiResponse<TeacherContactBook>.fromJson(
        _result.data!,
        (json) => TeacherContactBook.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<TeacherContactBookMessage>> addContactBookMessage({
    required int contactBookId,
    required String messageText,
    File? uploadFile,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'contact_book_id',
      contactBookId.toString(),
    ));
    _data.fields.add(MapEntry(
      'message_text',
      messageText,
    ));
    if (uploadFile != null) {
      _data.files.add(MapEntry(
        'UploadFile',
        MultipartFile.fromFileSync(
          uploadFile.path,
          filename: uploadFile.path.split(Platform.pathSeparator).last,
        ),
      ));
    }
    final _options =
        _setStreamType<ApiResponse<TeacherContactBookMessage>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/api/ContactBook/message',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<TeacherContactBookMessage> _value;
    try {
      _value = ApiResponse<TeacherContactBookMessage>.fromJson(
        _result.data!,
        (json) =>
            TeacherContactBookMessage.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
