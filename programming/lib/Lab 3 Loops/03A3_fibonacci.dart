import 'dart:io';

void main() {
  stdout.write("Enter any number : ");
  int n = int.parse(stdin.readLineSync()!);

  int a = 0;
  int b = 1;
  for (int i = 0; i < n; i++) {
    stdout.write('$a ');
    int next = a + b;
    a = b;
    b = next;
  }
  stdout.writeln();
}
