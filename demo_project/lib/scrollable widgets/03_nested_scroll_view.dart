import 'package:flutter/material.dart';

class DemoNesScrView extends StatefulWidget {
  const DemoNesScrView({super.key});

  @override
  State<DemoNesScrView> createState() => _DemoNesScrViewState();
}

class _DemoNesScrViewState extends State<DemoNesScrView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(title: Text("Post ${index + 1}"));
          },
        ),
      ),
    );
  }
}
