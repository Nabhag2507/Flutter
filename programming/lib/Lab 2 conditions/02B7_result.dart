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

  if (percentage > 33) {
    print("Student is passed.");
  } else {
    print("Student is failed");
  }
}
