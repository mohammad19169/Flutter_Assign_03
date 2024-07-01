import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  print('Enter number of students:');
  int numberOfStudents = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numberOfStudents; i++) {
    Map<String, dynamic> student = {};

    print('Enter Name of student ${i + 1}:');
    student['name'] = stdin.readLineSync();

    print('Enter Marks of student ${i + 1} (separated by spaces):');
    student['marks'] = stdin.readLineSync()!
        .split(' ')
        .map((mark) => int.parse(mark))
        .toList();

    print('Enter Section of student ${i + 1}:');
    student['section'] = stdin.readLineSync();

    print('Enter Roll Number of student ${i + 1}:');
    student['roll_no'] = stdin.readLineSync();

    students.add(student);
  }

  for (var student in students) {
    List<int> marks = student['marks'];
    double average = marks.reduce((a, b) => a + b) / marks.length;
    String grade;

    if (average >= 90) {
      grade = 'A';
    } else if (average >= 80) {
      grade = 'B';
    } else if (average >= 70) {
      grade = 'C';
    } else if (average >= 60) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    print('Student: ${student['name']}, Grade: $grade');
  }
}
