class Announcement {
  final String? title;
  final int schoolId;
  final int teacherId;
  final String content;
  final String? uploadFile;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Announcement({
    this.title,
    required this.schoolId,
    required this.teacherId,
    required this.content,
    this.uploadFile,
    this.createdAt,
    this.updatedAt,
  });
  factory Announcement.fromJson(Map<String, dynamic> json) {
    return Announcement(
      title: json['title'] as String?,
      schoolId: json['school_id'] as int,
      teacherId: json['teacher_id'] as int,
      content: json['content'] as String,
      uploadFile: json['upload_file'] as String?,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'] as String)
          : null,
    );
  }
}
