import 'package:flutter/material.dart';

class AlertBoxWithTwoButton extends StatefulWidget {
  const AlertBoxWithTwoButton({super.key});

  @override
  State<AlertBoxWithTwoButton> createState() => _AlertBoxWithTwoButtonState();
}

class _AlertBoxWithTwoButtonState extends State<AlertBoxWithTwoButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  ),
                  backgroundColor: Colors.redAccent,
                  title: Text("Delete"),
                  content: Text("Are you sure you want to proceed?"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Cancel"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Deleted successfully.",
                              style: TextStyle(fontSize: 50),
                            ),
                            duration: Duration(seconds: 1),
                            backgroundColor: Colors.black,
                          ),
                        );
                        Navigator.pop(context);
                      },
                      child: Text("Yes"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Click Here"),
        ),
      ),
    );
  }
}
