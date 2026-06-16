import 'dart:io';

void main() {
  stdout.write("Enter any number : ");
  int n = int.parse(stdin.readLineSync()!);

  String ans = (n % 2 == 0) ? "even" : "odd";

  print("Number is " + ans);
}
