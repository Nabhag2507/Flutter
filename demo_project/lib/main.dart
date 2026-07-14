// import 'package:demo_project/container_demo.dart';
// import 'package:demo_project/first_screen.dart';
// import 'package:demo_project/grids/01_3boxes.dart';
// import 'package:demo_project/grids/02_equal_grid.dart';
// import 'package:demo_project/grids/03_random_grid.dart';
// import 'package:demo_project/image_button_demo/button_demo.dart';
// import 'package:demo_project/image_button_demo/image_demo.dart';
// import 'package:demo_project/image_button_demo/exercise_button.dart';
// import 'package:demo_project/layouts/l1.dart';
// import 'package:demo_project/layouts/l2.dart';
// import 'package:demo_project/layouts/l3.dart';
// import 'package:demo_project/layouts/l4.dart';
// import 'package:demo_project/layouts/l5.dart';
// import 'package:demo_project/layouts/l6.dart';
import 'package:demo_project/layouts/l7.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SeventhLayout(),
    );
  }
}
