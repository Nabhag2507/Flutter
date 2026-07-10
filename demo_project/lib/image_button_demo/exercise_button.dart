import 'package:flutter/material.dart';

class ExerciseButton extends StatelessWidget {
  const ExerciseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exercise button")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Getting started"),
                  duration: Duration(microseconds: 1),
                ),
              );
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
            ),
            child: Text("🚀 Get Started"),
          ),
        ],
      ),
    );
  }
}
