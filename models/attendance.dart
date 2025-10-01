class Attendance {
  final String studentId;
  final DateTime date;
  final bool isPresent;

  Attendance({
    required this.studentId,
    required this.date,
    required this.isPresent,
  });

  Map<String, dynamic> toMap() {
    return {
      "studentId": studentId,
      "date": date.toIso8601String(),
      "isPresent": isPresent,
    };
  }

  factory Attendance.fromMap(Map<String, dynamic> map) {
    return Attendance(
      studentId: map["studentId"],
      date: DateTime.parse(map["date"]),
      isPresent: map["isPresent"] ?? false,
    );
  }
}
