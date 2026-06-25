class Rectangle {
  int? length;
  int? width;
  Rectangle(int length, int width) {
    this.length = length;
    this.width = width;
  }

  double calculateArea() {
    return (this.length! * this.width!).toDouble();
  }
}

void main() {
  Rectangle r1 = Rectangle(10, 20);
  print(r1.calculateArea());
}
