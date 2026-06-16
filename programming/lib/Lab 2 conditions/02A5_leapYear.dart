import 'dart:io';

void main() {
  stdout.write("Enter year : ");
  int year = int.parse(stdin.readLineSync()!);

  String ans = (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0))
      ? "Year is a leap year"
      : "Year is not a leap year";

  print(ans);
}
