import 'dart:io';

void main() {
  stdout.write("Enter any number : ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    print(i);
  }
}
