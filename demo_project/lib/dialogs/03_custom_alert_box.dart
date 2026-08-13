import 'package:flutter/material.dart';

class CustomAlertBoxDemo extends StatefulWidget {
  const CustomAlertBoxDemo({super.key});

  @override
  State<CustomAlertBoxDemo> createState() => _CustomAlertBoxDemoState();
}

class _CustomAlertBoxDemoState extends State<CustomAlertBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: Icon(Icons.check_circle, size: 50),
                title: Text("Success!"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [Center(child: Text("Payment successful."))],
                ),
                actions: [
                  Center(
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("OK", style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            );
          },
          child: Text("Click to pay"),
        ),
      ),
    );
  }
}
