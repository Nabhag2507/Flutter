import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Row(        this is for horizontal
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.yellow)),
          Expanded(child: Container(color: Colors.purple)),
          Expanded(child: Container(color: Colors.pink)),
        ],
      ),
    );
  }
}
