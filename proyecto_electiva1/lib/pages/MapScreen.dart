// mapscreen.dart
import 'package:flutter/material.dart';
import 'package:proyecto_electiva1/widgets/destinations.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'A donde vamos?',
          style: TextStyle(color: Colors.yellow),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Mapa placeholder
          Expanded(
            child: Container(
              color: Colors.black,
              child: const Center(
                child: Text(
                  'Mapa Aquí',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          // Lista de ubicaciones y botón
          const Destinations(),
        ],
      ),
    );
  }
}
