import 'package:flutter/material.dart';

class BottomSheetDemoPage extends StatefulWidget {
  const BottomSheetDemoPage({super.key});

  @override
  State<BottomSheetDemoPage> createState() => _BottomSheetDemoPageState();
}

class _BottomSheetDemoPageState extends State<BottomSheetDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  barrierColor: Colors.pinkAccent,
                  barrierLabel: "Bottom sheet opened",
                  backgroundColor: Colors.greenAccent,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Choose Option",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          ListTile(
                            title: Text("Camera"),
                            leading: Icon(Icons.camera_alt_outlined),
                          ),
                          ListTile(
                            title: Text("Gallery"),
                            leading: Icon(Icons.image_outlined),
                          ),
                          ListTile(
                            title: Text("Document"),
                            leading: Icon(Icons.file_copy_outlined),
                          ),
                          ListTile(
                            title: Text("Delete"),
                            leading: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text("Click to open bottom sheet."),
            ),
          ],
        ),
      ),
    );
  }
}
