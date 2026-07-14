import 'package:flutter/material.dart';

class FourthLayout extends StatelessWidget {
  const FourthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 800,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 15,
                      child: Container(color: Color.fromRGBO(121, 85, 73, 1)),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(color: Color.fromRGBO(24, 162, 255, 1)),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.yellow)),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(color: Colors.blueAccent),
                                ),
                                Expanded(
                                  child: Container(
                                    color: const Color.fromRGBO(63, 81, 181, 1),
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
                                    color: Color.fromRGBO(141, 2, 255, 1),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Color.fromRGBO(255, 27, 175, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(color: Color.fromRGBO(84, 109, 254, 1)),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.black)),
                    Expanded(child: Container(color: Colors.white)),
                    Expanded(child: Container(color: Colors.black)),
                    Expanded(child: Container(color: Colors.white)),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Color.fromRGBO(91, 132, 111, 1),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Color.fromRGBO(24, 85, 54, 1),
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
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                color: Color.fromRGBO(
                                                  27,
                                                  208,
                                                  118,
                                                  1,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Color.fromRGBO(
                                                  167,
                                                  26,
                                                  213,
                                                  0.34,
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
                                              child: Container(
                                                color: Color.fromRGBO(
                                                  229,
                                                  236,
                                                  12,
                                                  1,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Color.fromRGBO(
                                                  228,
                                                  24,
                                                  24,
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Color.fromRGBO(29, 14, 163, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container(color: Colors.blue)),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Color.fromRGBO(91, 132, 111, 1),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Color.fromRGBO(24, 85, 54, 1),
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
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                color: Color.fromRGBO(
                                                  27,
                                                  208,
                                                  118,
                                                  1,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Color.fromRGBO(
                                                  167,
                                                  26,
                                                  213,
                                                  0.34,
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
                                              child: Container(
                                                color: Color.fromRGBO(
                                                  229,
                                                  236,
                                                  12,
                                                  1,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                color: Color.fromRGBO(
                                                  228,
                                                  24,
                                                  24,
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Color.fromRGBO(29, 14, 163, 1),
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
            ],
          ),
        ),
      ),
    );
  }
}
