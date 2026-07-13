import 'package:flutter/material.dart';

class FirstLayout extends StatelessWidget {
  const FirstLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: Container(color: Colors.red)),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.green)),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.yellow)),
                      Expanded(child: Container(color: Colors.greenAccent)),
                    ],
                  ),
                ),
                Expanded(flex: 2, child: Container(color: Colors.green)),
              ],
            ),
          ),
          Expanded(child: Container(color: Colors.blue)),
        ],
      ),
    );
  }
}
