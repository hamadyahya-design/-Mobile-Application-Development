class Student {
  final String id;
  final String studentNumber;
  final String name;
  final String department;
  final String level;
  final double gpa;
  final String email;
  final String contributedBy; // student who added this record

  const Student({
    required this.id,
    required this.studentNumber,
    required this.name,
    required this.department,
    required this.level,
    required this.gpa,
    required this.email,
    required this.contributedBy,
  });

  Student copyWith({
    String? studentNumber,
    String? name,
    String? department,
    String? level,
    double? gpa,
    String? email,
    String? contributedBy,
  }) {
    return Student(
      id: id,
      studentNumber: studentNumber ?? this.studentNumber,
      name: name ?? this.name,
      department: department ?? this.department,
      level: level ?? this.level,
      gpa: gpa ?? this.gpa,
      email: email ?? this.email,
      contributedBy: contributedBy ?? this.contributedBy,
    );
  }
}
