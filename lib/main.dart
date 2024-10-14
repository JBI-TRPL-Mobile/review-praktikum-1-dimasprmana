import 'package:flutter/material.dart';
import 'models/item.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Katalog Buku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => ItemPage(), 
        //'/about': (context) => AboutPage(), 
      },
    );
  }
}
