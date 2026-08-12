import 'package:flutter/material.dart';

class TabBarDemoWithNestedScrollView extends StatefulWidget {
  const TabBarDemoWithNestedScrollView({super.key});

  @override
  State<TabBarDemoWithNestedScrollView> createState() =>
      _TabBarDemoWithNestedScrollViewState();
}

class _TabBarDemoWithNestedScrollViewState
    extends State<TabBarDemoWithNestedScrollView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text("My profile"),
                expandedHeight: 300,
                pinned: true,
                backgroundColor: Colors.pinkAccent,
                flexibleSpace: const FlexibleSpaceBar(
                  title: Text("Flutter 2"),
                  expandedTitleScale: 10,
                  background: FlutterLogo(size: 50),
                ),
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
            ];
          },
          body: TabBarView(
            children: [
              Center(child: Text("Home")),
              Center(child: Text("Profile")),
              Center(child: Text("Settings")),
            ],
          ),
        ),
      ),
    );
  }
}
