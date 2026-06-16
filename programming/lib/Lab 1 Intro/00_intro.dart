import 'dart:io';
import 'dart:math';

void main() {
  // A. WAP to print your name, enrollment number and branch in console.
  print("Name: Sorathiya Nabhag");
  print("Enrollment Number: 2401010275");
  print("Branch: Computer Science and Engineering");

  // A. WAP to perform addition, subtraction, multiplication
  // and division of two numbers entered by the user.
  print("\nEnter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Addition = ${num1 + num2}");
  print("Subtraction = ${num1 - num2}");
  print("Multiplication = ${num1 * num2}");

  if (num2 != 0) {
    print("Division = ${num1 / num2}");
  } else {
    print("Division not possible (division by zero)");
  }

  // A. WAP to convert temperature from Fahrenheit to Celsius.
  // Formula: Celsius = (Fahrenheit - 32) × 5 / 9
  print("\nEnter temperature in Fahrenheit:");
  double fahrenheit = double.parse(stdin.readLineSync()!);

  double celsius = (fahrenheit - 32) * 5 / 9;
  print("Temperature in Celsius = $celsius");

  // total marks, percentage and grade.
  print("\nEnter marks of 5 subjects:");

  double s1 = double.parse(stdin.readLineSync()!);
  double s2 = double.parse(stdin.readLineSync()!);
  double s3 = double.parse(stdin.readLineSync()!);
  double s4 = double.parse(stdin.readLineSync()!);
  double s5 = double.parse(stdin.readLineSync()!);

  double total = s1 + s2 + s3 + s4 + s5;
  double percentage = (total / 500) * 100;

  String grade;

  if (percentage >= 90) {
    grade = "A+";
  } else if (percentage >= 80) {
    grade = "A";
  } else if (percentage >= 70) {
    grade = "B";
  } else if (percentage >= 60) {
    grade = "C";
  } else if (percentage >= 50) {
    grade = "D";
  } else {
    grade = "F";
  }

  print("Total Marks = $total");
  print("Percentage = $percentage%");
  print("Grade = $grade");

  // A. WAP that reads a number in meters, converts it to feet.
  // Formula: Feet = Meter × 3.28084
  print("\nEnter distance in meters:");
  double meter = double.parse(stdin.readLineSync()!);

  double feet = meter * 3.28084;
  print("Distance in Feet = $feet");

  // A. WAP to calculate BMI using weight (pounds)
  // and height (inches).
  // Formula: BMI = (Weight × 703) / (Height)^2
  print("\nEnter weight in pounds:");
  double weight = double.parse(stdin.readLineSync()!);

  print("Enter height in inches:");
  double height = double.parse(stdin.readLineSync()!);

  double bmi = (weight * 703) / (height * height);
  print("BMI = $bmi");

  // B. WAP to swap two numbers using third variable.
  print("\nEnter first number for swapping:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number for swapping:");
  int b = int.parse(stdin.readLineSync()!);

  int temp = a;
  a = b;
  b = temp;

  print("After swapping using third variable:");
  print("a = $a, b = $b");

  // B. WAP to swap two numbers without using third variable.
  print("\nEnter first number:");
  int x = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int y = int.parse(stdin.readLineSync()!);

  x = x + y;
  y = x - y;
  x = x - y;

  print("After swapping without third variable:");
  print("x = $x, y = $y");

  // B. WAP to calculate Simple Interest and Compound Interest.
  // Formula:
  // SI = (P × R × T) / 100
  // CI = P × (1 + R / 100)^T – P
  print("\nEnter Principal Amount:");
  double p = double.parse(stdin.readLineSync()!);

  print("Enter Rate of Interest:");
  double r = double.parse(stdin.readLineSync()!);

  print("Enter Time (years):");
  double t = double.parse(stdin.readLineSync()!);

  double si = (p * r * t) / 100;
  double ci = p * pow((1 + r / 100), t) - p;

  print("Simple Interest = $si");
  print("Compound Interest = $ci");
}
