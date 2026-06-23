import 'dart:io';

void main() {
  stdout.write("Enter any number : ");
  int n = int.parse(stdin.readLineSync()!);

  print(((int n) => n * n)(n));
}
