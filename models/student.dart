class Student {
  final String id;
  final String name;
  final String email;

  Student({required this.id, required this.name, required this.email});

  Map<String, dynamic> toMap() {
    return {"id": id, "name": name, "email": email};
  }

  factory Student.fromMap(Map<String, dynamic> map, String id) {
    return Student(id: id, name: map["name"] ?? "", email: map["email"] ?? "");
  }
}
