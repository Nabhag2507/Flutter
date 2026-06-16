import 'dart:io';

void main() {
  stdout.write("Enter first subject marks : ");
  int s1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second subject marks : ");
  int s2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter third subject marks : ");
  int s3 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter fourth subject marks : ");
  int s4 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter fifth subject marks : ");
  int s5 = int.parse(stdin.readLineSync()!);

  double percentage = (s1 + s2 + s3 + s4 + s5) / 5;
  String cls;

  if (percentage > 90) {
    cls = "A";
  } else if (percentage > 80) {
    cls = "B";
  } else if (percentage > 70) {
    cls = "C";
  } else if (percentage > 60) {
    cls = "D";
  } else if (percentage > 50) {
    cls = "E";
  } else {
    cls = "Fail";
  }

  print("Student passed with $percentage percentage and $cls grade");
}
