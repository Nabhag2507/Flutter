import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatefulWidget {
  const GridViewBuilderDemo({super.key});

  @override
  State<GridViewBuilderDemo> createState() => _GridViewBuilderDemoState();
}

class _GridViewBuilderDemoState extends State<GridViewBuilderDemo> {
  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
    "Watermelon",
    "Peach",
    "Guava",
    "Grapes",
    "Pomegranate",
    "Pineapple",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View builder.")),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: fruits.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 1,
                  childAspectRatio: 10,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.blue.shade100,
                    elevation: 4,
                    child: Center(
                      child: Text(
                        fruits[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
