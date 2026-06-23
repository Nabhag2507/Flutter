void main() {
  print(names("Nabhag"));
  print(names("Dhruvil", "Amreli"));
}

String names(String name, [String city = 'Rajkot']) {
  return name + " lives in " + city;
}
