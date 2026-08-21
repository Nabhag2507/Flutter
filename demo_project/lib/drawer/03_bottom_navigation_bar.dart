import 'package:flutter/material.dart';

class BottomNavigationBarDemoPage extends StatefulWidget {
  const BottomNavigationBarDemoPage({super.key});

  @override
  State<BottomNavigationBarDemoPage> createState() =>
      _BottomNavigationBarDemoPageState();
}

class _BottomNavigationBarDemoPageState
    extends State<BottomNavigationBarDemoPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Text> pages = [
      Text("Home", style: TextStyle(fontSize: 50)),
      Text("Person", style: TextStyle(fontSize: 50)),
      Text("Settings", style: TextStyle(fontSize: 50)),
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation bar")),
      body: Center(child: pages[currentIndex]),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
    );
  }
}
