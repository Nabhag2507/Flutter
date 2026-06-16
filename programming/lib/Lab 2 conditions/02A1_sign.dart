import "dart:io";

void main() {
  stdout.write("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    print("Number is positive.");
  } else if (n < 0) {
    print("Number is negative.");
  } else {
    print("Numbe is zero");
  }
}
