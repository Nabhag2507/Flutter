import 'package:flutter/material.dart';

class GridViewImages extends StatelessWidget {
  const GridViewImages({super.key});

  static const List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
    "Watermelon",
    "Peach",
    "Guava",
    "Grapes",
    "Pomegranate",
    "Pineapple",
  ];

  static const String imageUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGBaIKWj8H8n2xHR1UKz5hNmjd_32KVqFCf7sq6aBjpg&s=10";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView Builder"), centerTitle: true),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: fruits.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
