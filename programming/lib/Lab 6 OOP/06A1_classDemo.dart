class Student {
  int? rollNo;
  String? name;

  void printName() {
    print(name);
  }
}

void main() {
  Student s1 = Student();
  s1.name = "Nabhag";

  s1.printName();
}
