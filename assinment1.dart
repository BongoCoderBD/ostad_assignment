// Part A: Interface definition

abstract class Role {
  void displayRole();
}

// Part B: Person class

class Person implements Role {
  final String name;
  final int age;
  final String address;

  Person(this.name, this.age, this.address);

  String getName() => name;
  int getAge() => age;
  String getAddress() => address;

  @override
  void displayRole() {
    //print("Role: Person");
  }
}

// Part C: Student class

class Student extends Person {
  final String studentID;
  final String grade;
  final List<double> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade,
      this.courseScores)
      : super(name, age, address);

  double calculateAverageScore() {
    double sum = 0;
    for (var score in courseScores) {
      sum += score;
    }
    return sum / courseScores.length;
  }

  @override
  void displayRole() {
    super.displayRole();
    print("Role: 01");
  }
}

// Part D: Teacher class

class Teacher extends Person {
  final String teacherID;
  final List<String> coursesTaught;

  Teacher(
      String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  void displayCoursesTaught() {
    print("Courses taught:");
    for (var course in coursesTaught) {
      print("  - $course");
    }
  }

  @override
  void displayRole() {
    super.displayRole();
    print("Role: 01");
  }
}

// Part E: Student Management System

void main() {
  // Create student instance
  Student student1 = Student(
    "Kamaladhon Tangchangya",
    24,
    "Chittagong, Bangladesh",
    "ST0001",
    'A+',
    [80, 90, 85],
  );

  // Create teacher instance
  Teacher teacher1 = Teacher(
    "Rafat",
    35,
    "Dhaka",
    "TC256",
    ["Dart", "Flutter"],
  );

  // Display Student Details
  print('Student Information');
  print("ID: ${student1.studentID}");
  student1.displayRole();
  print("Name: ${student1.name}");
  print("Age: ${student1.age}");
  print("Address: ${student1.address}");
  print("Average Score: ${student1.calculateAverageScore()}");
  print("Grade: ${student1.grade}\n\n");

  // Display teacher's details
  print('Teacher Information');
  print("ID: ${teacher1.teacherID}");
  teacher1.displayRole();
  print("Name: ${teacher1.name}");
  print("Age: ${teacher1.age}");
  print("Address: ${teacher1.address}");
  teacher1.displayCoursesTaught();
}
