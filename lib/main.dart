import 'package:flutter/material.dart';
// import 'package:medoc/diet_page.dart';
// import 'package:medoc/women_health.dart';
import 'package:medoc/women_health_extension.dart';
// import 'home_page.dart';
// import 'vitals_page.dart';
// import 'diet_extension.dart';

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
      // home: DietSelection(),
      // home: DietPage(),
      // home: WomenHealth(),
      home: WomenHealthExtension(),
    );
  }
}
