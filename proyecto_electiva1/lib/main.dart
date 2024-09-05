// main.dart
import 'package:flutter/material.dart';
import 'package:proyecto_electiva1/pages/MapScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.yellow, // Color secundario
        ),
      ),
      home: const MapScreen(),
    );
  }
}
