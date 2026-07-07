import 'package:flutter/material.dart';

class EqualGrid extends StatelessWidget {
  const EqualGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(color: Colors.pink, width: 100),
                  Container(color: Colors.yellow, width: 100),
                  Container(color: Colors.purple, width: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(color: Colors.red, width: 100),
                  Container(color: Colors.blue, width: 100),
                  Container(color: Colors.green, width: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.black, width: 100),
                  Container(color: Colors.orange, width: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
