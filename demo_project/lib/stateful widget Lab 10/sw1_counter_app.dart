import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter app"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: TextStyle(color: Colors.redAccent, fontSize: 36),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text("Increase value"),
            ),
          ],
        ),
      ),
    );
  }
}
