import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentCard extends StatelessWidget {
  final Student student;
  final VoidCallback onTap;

  const StudentCard({super.key, required this.student, required this.onTap});

  Color _gpaColor(double gpa) {
    if (gpa >= 4.5) return Colors.green;
    if (gpa >= 3.5) return Colors.blue;
    if (gpa >= 2.5) return Colors.orange;
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 97, 213, 101),
          child: Text(
            student.name.isNotEmpty ? student.name[0].toUpperCase() : '?',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          student.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('${student.studentNumber} • ${student.department}'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'GPA: ${student.gpa.toStringAsFixed(1)}',
              style: TextStyle(
                color: _gpaColor(student.gpa),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Level ${student.level}',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
