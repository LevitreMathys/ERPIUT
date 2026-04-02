import 'package:flutter/material.dart';
import 'package:frontenderp/Pages/HomePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Boutique IUT'),
          backgroundColor: Colors.blue,
        ),
        body: Homepage(),
      ),
    );
  }
}
