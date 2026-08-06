import 'package:flutter/material.dart';

class GridFruitsDemo extends StatefulWidget {
  const GridFruitsDemo({super.key});

  @override
  State<GridFruitsDemo> createState() => _GridFruitsDemoState();
}

class _GridFruitsDemoState extends State<GridFruitsDemo> {
  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
    "Watermelon",
    "Peach",
    "Guava",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View demo")),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 50,
                  mainAxisSpacing: 50,
                  childAspectRatio: 2,
                ),
                children: [
                  Card(
                    color: Colors.pinkAccent,
                    child: Center(
                      child: Text(fruits[0], style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Card(
                    color: Colors.pinkAccent,
                    child: Center(
                      child: Text(fruits[1], style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Card(
                    color: Colors.pinkAccent,
                    child: Center(
                      child: Text(fruits[2], style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Card(
                    color: Colors.pinkAccent,
                    child: Center(
                      child: Text(fruits[3], style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Card(
                    color: Colors.pinkAccent,
                    child: Center(
                      child: Text(fruits[4], style: TextStyle(fontSize: 25)),
                    ),
                  ),
                  Card(
                    color: Colors.pinkAccent,
                    child: Center(
                      child: Text(fruits[5], style: TextStyle(fontSize: 25)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
