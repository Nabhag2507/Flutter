import 'package:flutter/material.dart';

class LikeUnlikeButton extends StatefulWidget {
  const LikeUnlikeButton({super.key});

  @override
  State<LikeUnlikeButton> createState() => _LikeUnlikeButtonState();
}

class _LikeUnlikeButtonState extends State<LikeUnlikeButton> {
  bool toggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Like Unlike button")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  toggle = !toggle;
                });
              },
              child: Icon(toggle ? Icons.thumb_up : Icons.thumb_down),
            ),
          ],
        ),
      ),
    );
  }
}
