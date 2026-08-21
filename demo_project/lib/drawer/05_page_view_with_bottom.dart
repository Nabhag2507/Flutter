import 'package:flutter/material.dart';

class BottomBarWithPageController extends StatefulWidget {
  const BottomBarWithPageController({super.key});

  @override
  State<BottomBarWithPageController> createState() =>
      _BottomBarWithPageControllerState();
}

class _BottomBarWithPageControllerState
    extends State<BottomBarWithPageController> {
  final PageController pageController = PageController();
  int currentIndex = 0;

  List<Text> pages = [
    Text("Home", style: TextStyle(fontSize: 50)),
    Text("Person", style: TextStyle(fontSize: 50)),
    Text("Settings", style: TextStyle(fontSize: 50)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
