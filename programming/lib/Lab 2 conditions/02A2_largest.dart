import 'dart:io';

void main() {
  stdout.write("Enter first number : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter third number : ");
  int c = int.parse(stdin.readLineSync()!);

  if (a > b && a > c) {
    print("A is the largest.");
  } else if (b > a && b > c) {
    print("B is the largest.");
  } else {
    print("C is the largest.");
  }
}
