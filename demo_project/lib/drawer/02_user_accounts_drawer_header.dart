import 'package:flutter/material.dart';

class UserAccountsDrawerHeaderDemoPage extends StatefulWidget {
  const UserAccountsDrawerHeaderDemoPage({super.key});

  @override
  State<UserAccountsDrawerHeaderDemoPage> createState() =>
      _UserAccountsDrawerHeaderDemoPageState();
}

class _UserAccountsDrawerHeaderDemoPageState
    extends State<UserAccountsDrawerHeaderDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer demo.")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Nabhag Sorathiya"),
              accountEmail: Text("nabhagsorathiya81@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () => Navigator.pop(context),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Center(),
    );
  }
}
