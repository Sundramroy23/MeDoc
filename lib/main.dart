import 'package:flutter/material.dart';
import 'package:medoc/diet_page.dart';
import 'home_page.dart';
import 'vitals_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Medoc",
      // home: HomePage(),
      // home: VitalsPage(),
      home: DietPage(),
    );
  }
}
