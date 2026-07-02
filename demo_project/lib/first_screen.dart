import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"), backgroundColor: Colors.blue),
      body: Text(
        "Hello world from DU",
        style: TextStyle(fontWeight: FontWeight(900)),
      ),
    );
  }
}
