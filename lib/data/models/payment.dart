class Payment {
  final String id;
  final double amount;
  final DateTime date;
  final String status;

  Payment({
    required this.id,
    required this.amount,
    required this.date,
    required this.status,
  });

  // 如果需要,可以添加 fromJson 和 toJson 方法
  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      id: json['id'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'date': date.toIso8601String(),
      'status': status,
    };
  }
}
