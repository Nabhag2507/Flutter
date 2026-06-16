import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter coefficient of x square : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter coefficient of x : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter constant term : ");
  int c = int.parse(stdin.readLineSync()!);

  int discriminant = (b * b) - (4 * a * c);

  double x1 = ((-1 * b) + sqrt(discriminant)) / 2 * a;
  double x2 = ((-1 * b) - sqrt(discriminant)) / 2 * a;

  print("Roots are $x1 and $x2");
}
