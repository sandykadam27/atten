import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/student.dart';
import '../models/attendance.dart';

class DatabaseService {
  final _db = FirebaseFirestore.instance;

  Future<void> addStudent(Student student) async {
    await _db.collection("students").doc(student.id).set(student.toMap());
  }

  Future<void> markAttendance(Attendance attendance) async {
    await _db.collection("attendance").add(attendance.toMap());
  }

  Stream<QuerySnapshot> getAttendanceReports() {
    return _db.collection("attendance").snapshots();
  }
}
