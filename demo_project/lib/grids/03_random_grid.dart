import 'package:flutter/material.dart';

class RandomGrid extends StatelessWidget {
  const RandomGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 600,
          child: Row(
            children: [
              // First Column
              Expanded(
                child: Column(
                  children: [
                    Expanded(flex: 2, child: Container(color: Colors.grey)),
                    Expanded(flex: 3, child: Container(color: Colors.orange)),
                    Expanded(flex: 3, child: Container(color: Colors.indigo)),
                  ],
                ),
              ),

              // Second Column
              Expanded(
                child: Column(
                  children: [
                    Expanded(flex: 4, child: Container(color: Colors.red)),
                    Expanded(flex: 3, child: Container(color: Colors.green)),
                    Expanded(flex: 2, child: Container(color: Colors.purple)),
                  ],
                ),
              ),

              // Third Column
              Expanded(
                child: Column(
                  children: [
                    Expanded(flex: 1, child: Container(color: Colors.red)),
                    Expanded(flex: 3, child: Container(color: Colors.yellow)),
                    Expanded(flex: 2, child: Container(color: Colors.purple)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
