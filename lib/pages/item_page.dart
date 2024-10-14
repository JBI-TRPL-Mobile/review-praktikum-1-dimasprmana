import 'package:flutter/material.dart';
import 'package:template_project/models/item.dart'; // Pastikan path ini benar

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan argumen dari navigasi
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Perbaiki padding
        child: Column(
          children: [
            Image.network(
              item.imageUrl,
              width: 140,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              item.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
