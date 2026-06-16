void main() {
  String str = "hello";
  print(str);

  print(str.toUpperCase());
  print(str.toLowerCase());
  print(str.endsWith("lo"));
  print(str.contains("el"));
  print(str.indexOf("h"));
  print(str.lastIndexOf("l"));
  print(str.replaceAll("he", "hh"));
  print(str.split("l"));
  print(str.startsWith("fd"));
  print(str.trim());
  print(str.trimLeft());
  print(str.trimRight());

  String str2 = "world";
  print(str == str2);
}
