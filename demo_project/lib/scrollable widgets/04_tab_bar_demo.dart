import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 94),
          title: Text("Tab bar demo"),
          bottom: const TabBar(
            labelColor: Colors.purple,
            indicatorColor: Colors.pink,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "Home", icon: Icon(Icons.home)),
              Tab(text: "Profile", icon: Icon(Icons.person)),
              Tab(text: "Settings", icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home")),
            Center(child: Text("Profile")),
            Center(child: Text("Settings")),
          ],
        ),
      ),
    );
  }
}
