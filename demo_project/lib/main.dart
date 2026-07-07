// import 'package:demo_project/container_demo.dart';
// import 'package:demo_project/first_screen.dart';
// import 'package:demo_project/grids/01_3boxes.dart';
// import 'package:demo_project/grids/02_equal_grid.dart';
import 'package:demo_project/grids/03_random_grid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RandomGrid());
  }
}
