import 'package:flutter/material.dart';

class PageViewDemoPage extends StatefulWidget {
  const PageViewDemoPage({super.key});

  @override
  State<PageViewDemoPage> createState() => _PageViewDemoPageState();
}

class _PageViewDemoPageState extends State<PageViewDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Instagram")),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          PageView(
            children: [
              Container(color: Colors.blueAccent),
              Container(color: Colors.orangeAccent),
            ],
          ),
          Container(color: Colors.yellowAccent),
          Container(color: Colors.greenAccent),
          Container(color: Colors.purpleAccent),
        ],
      ),
    );
  }
}
