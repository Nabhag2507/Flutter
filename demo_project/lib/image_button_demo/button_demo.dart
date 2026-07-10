import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (Text("Lab 8 button demo"))),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("elevated button clicked"),
                  duration: Duration(microseconds: 1),
                  backgroundColor: Colors.pink,
                ),
              );
            },
            child: Text("ele button"),
          ),
          TextButton(
            onPressed: () {
              debugPrint("Text button pressed.");
            },
            child: Text("text button"),
          ),
          IconButton(
            onPressed: () {
              debugPrint("Icon button pressed.");
            },
            icon: Icon(Icons.star, color: Colors.pink),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint("Outlined button printed.");
            },
            child: Text("Out button"),
          ),
        ],
      ),
    );
  }
}
