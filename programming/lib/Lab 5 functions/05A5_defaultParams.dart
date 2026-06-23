void main() {
  print(defParam());
}

String defParam({String name = "ABC", String city = "Rajkot"}) {
  return "$name lives in $city";
}
