import 'package:flutter/material.dart';

class FifthLayout extends StatelessWidget {
  const FifthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 800,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 5),
          ),
          child: Column(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.blue)),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(color: Colors.lightGreen),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.pink)),
                          Expanded(child: Container(color: Colors.yellow)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.orange)),
                    Expanded(child: Container(color: Colors.lightBlue)),
                    Expanded(child: Container(color: Colors.red)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
