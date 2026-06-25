class constructorDemo {
  int? a;
  constructorDemo() {
    print("Default constructor created.");
  }

  constructorDemo.withA(this.a) {
    print(a);
  }
}

void main() {
  constructorDemo c1 = constructorDemo();
  constructorDemo c2 = constructorDemo.withA(15);
}
