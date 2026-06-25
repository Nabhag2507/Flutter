class Person {
  String name;
  Person(this.name);

  void printPersonName() {
    print(name);
  }
}

class Student extends Person {
  String name;
  int rollNo;
  Student(this.name, this.rollNo) : super(name);

  void printNameRollNo() {
    print(name + " " + rollNo.toString());
  }
}

void main() {
  Person p = Person("Vishal");
  p.printPersonName();

  Student s = Student("Kuldeep", 105);
  s.printNameRollNo();
}
