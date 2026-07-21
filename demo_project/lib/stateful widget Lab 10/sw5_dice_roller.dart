import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceValue = 1;
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Roll the dice")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (diceValue == 1) Icon(Icons.looks_one, size: 100),
            if (diceValue == 2) Icon(Icons.looks_two, size: 100),
            if (diceValue == 3) Icon(Icons.looks_3, size: 100),
            if (diceValue == 4) Icon(Icons.looks_4, size: 100),
            if (diceValue == 5) Icon(Icons.looks_5, size: 100),
            if (diceValue == 6) Icon(Icons.looks_6, size: 100),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  diceValue = random.nextInt(6) + 1;
                });
              },
              child: Text("Roll the dice"),
            ),
          ],
        ),
      ),
    );
  }
}
