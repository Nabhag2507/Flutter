import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDemoBox extends StatefulWidget {
  const CupertinoDemoBox({super.key});

  @override
  State<CupertinoDemoBox> createState() => _CupertinoDemoBoxState();
}

class _CupertinoDemoBoxState extends State<CupertinoDemoBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text("Delete"),
                  content: Text("Are you sure you want to delete?"),
                  actions: [
                    CupertinoDialogAction(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Cancel"),
                    ),
                    CupertinoDialogAction(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Deleted Successfully!",
                              style: TextStyle(fontSize: 30),
                            ),
                            duration: Duration(seconds: 1),
                            backgroundColor: Colors.black,
                          ),
                        );
                        Navigator.pop(context);
                      },
                      child: Text("Delete"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Click to delete"),
        ),
      ),
    );
  }
}
