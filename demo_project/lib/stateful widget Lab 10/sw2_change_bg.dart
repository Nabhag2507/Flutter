import 'package:flutter/material.dart';

class ChangeBackground extends StatefulWidget {
  const ChangeBackground({super.key});

  @override
  State<ChangeBackground> createState() => _ChangeBackgroundState();
}

class _ChangeBackgroundState extends State<ChangeBackground> {
  Color clr = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr,
      appBar: AppBar(
        title: Text("Change background"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clr = Colors.redAccent;
                });
              },
              child: Text("Change background to red."),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clr = Colors.pinkAccent;
                });
              },
              child: Text("Change background to pink."),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clr = Colors.purpleAccent;
                });
              },
              child: Text("Change background to purple."),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clr = Colors.yellowAccent;
                });
              },
              child: Text("Change background to yellow."),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clr = Colors.greenAccent;
                });
              },
              child: Text("Change background to green."),
            ),
          ],
        ),
      ),
    );
  }
}
