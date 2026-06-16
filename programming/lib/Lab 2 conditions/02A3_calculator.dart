import 'dart:io';

void main() {
  stdout.write("Enter first number : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your choice : ");
  String c = stdin.readLineSync()!;

  switch (c) {
    case ("+"):
      print(a + b);
      break;

    case ("-"):
      print(a - b);
      break;

    case ("*"):
      print(a * b);
      break;

    case ("/"):
      print(a / b);
      break;

    default:
      print("Enter valid choice.");
  }
}
