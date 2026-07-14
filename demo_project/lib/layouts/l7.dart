import 'package:flutter/material.dart';

class SeventhLayout extends StatelessWidget {
  const SeventhLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 600,
          width: 600,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            right: BorderSide(width: 10, color: Colors.white),
                            bottom: BorderSide(width: 10, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          border: Border(
                            right: BorderSide(width: 10, color: Colors.white),
                            // bottom: BorderSide(width: 5, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(flex: 1, child: Container(color: Colors.green)),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      border: Border(
                                        top: BorderSide(
                                          width: 10,
                                          color: Colors.white,
                                        ),
                                        right: BorderSide(
                                          width: 10,
                                          color: Colors.white,
                                        ),
                                        bottom: BorderSide(
                                          width: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border(
                                        right: BorderSide(
                                          width: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      border: Border(
                                        bottom: BorderSide(
                                          width: 10,
                                          color: Colors.white,
                                        ),
                                        top: BorderSide(
                                          width: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

// decoration: BoxDecoration(
//                     color: Colors.blue,
//                     border: Border(
//                       right: BorderSide(width: 5, color: Colors.white),
//                     ),
//                   ),
