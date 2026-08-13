import 'package:flutter/material.dart';

class DialogBoxDemo extends StatefulWidget {
  const DialogBoxDemo({super.key});

  @override
  State<DialogBoxDemo> createState() => _DialogBoxDemoState();
}

class _DialogBoxDemoState extends State<DialogBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog box demo.")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Hello"),
                  content: Text("Dialog box opened."),
                );
              },
            );
          },
          child: Text(
            "Click to open dialog box.",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
