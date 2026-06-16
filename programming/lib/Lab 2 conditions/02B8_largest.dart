import 'dart:io';

void main() {
  stdout.write("Enter first number : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter third number : ");
  int c = int.parse(stdin.readLineSync()!);

  int largest = (a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c);

  print("Largest number is $largest");
}
