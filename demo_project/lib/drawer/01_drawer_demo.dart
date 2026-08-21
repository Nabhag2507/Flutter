import 'package:flutter/material.dart';

class DrawerDemoPage extends StatefulWidget {
  const DrawerDemoPage({super.key});

  @override
  State<DrawerDemoPage> createState() => _DrawerDemoPageState();
}

class _DrawerDemoPageState extends State<DrawerDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer demo.")),
      drawer: Drawer(
        child: Column(
          children: [Text("Home"), Text("Settings"), Text("Profile")],
        ),
      ),
      body: Center(),
    );
  }
}
