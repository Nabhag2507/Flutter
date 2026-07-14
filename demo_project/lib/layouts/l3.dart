import 'package:flutter/material.dart';

class ThirdLayout extends StatelessWidget {
  const ThirdLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 800,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.red)),
                          Expanded(child: Container(color: Colors.white)),
                          Expanded(child: Container(color: Colors.blue)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Color.fromRGBO(05, 238, 173, 1),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Color.fromRGBO(103, 59, 182, 1),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Color.fromRGBO(121, 85, 73, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              color: Color.fromRGBO(255, 234, 60, 1),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Color.fromRGBO(255, 151, 0, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Color.fromRGBO(33, 150, 245, 1),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Color.fromRGBO(74, 230, 227, 1),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Color.fromRGBO(243, 255, 13, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Color.fromRGBO(245, 100, 33, 1),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Color.fromRGBO(173, 230, 74, 1),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              color: Color.fromRGBO(134, 13, 255, 1),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Color.fromRGBO(230, 142, 74, 1),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Color.fromRGBO(13, 78, 255, 1),
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
                              color: Color.fromRGBO(92, 98, 103, 1),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Color.fromRGBO(74, 230, 227, 1),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Color.fromRGBO(186, 10, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Color.fromRGBO(20, 255, 188, 1),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Color.fromRGBO(74, 230, 227, 1),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Color.fromRGBO(134, 255, 13, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Color.fromRGBO(247, 20, 255, 1),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Color.fromRGBO(134, 255, 13, 1),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Color.fromRGBO(38, 35, 249, 1),
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
