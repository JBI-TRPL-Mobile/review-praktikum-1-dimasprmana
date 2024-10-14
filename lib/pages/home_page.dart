import 'package:flutter/material.dart';
import 'package:template_project/models/item.dart'; // Pastikan path ini benar

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Kancil Nyolong Timun',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-DHFhj5hlXJ7Z3URfYId7AE7H7dFH3ZoOzw&s',
       description: 'Cerita tentang kancil yang cerdik dan petualangannya mencuri timun.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(items[index].imageUrl),
            title: Text(items[index].name),
            trailing: ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman detail
                Navigator.pushNamed(
                  context,
                  '/detail', // Rute ke halaman detail
                  arguments: items[index], // Kirim data buku ke halaman detail
                );
              },
              child: Text('Detail Buku'), // Teks pada tombol
            ),
          );
        },
      ),
    );
  }
}
