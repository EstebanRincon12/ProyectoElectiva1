import 'package:flutter/material.dart';

class Destinations extends StatelessWidget {
  const Destinations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          _buildDestinationTile(
            context,
            icon: Icons.place,
            color: Colors.yellow,
            title: 'Edificio A',
            time: '25 min',
            destinationInfo: 'Este es el Edificio A, donde se imparten clases de informática.',
          ),
          _buildDestinationTile(
            context,
            icon: Icons.place,
            color: Colors.red,
            title: 'Edificio L',
            time: '12 min',
            destinationInfo: 'Este es el Edificio L, donde están los laboratorios.',
          ),
          _buildDestinationTile(
            context,
            icon: Icons.home,
            color: Colors.black,
            title: 'Central',
            time: '5 min',
            destinationInfo: 'Este es el edificio central de la universidad.',
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Acción del botón "Vamos!"
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
            ),
            child: const Text('Vamos!'),
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationTile(
    BuildContext context, {
    required IconData icon,
    required Color color,
    required String title,
    required String time,
    required String destinationInfo,
  }) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      subtitle: Text(time),
      onTap: () {
        _showDestinationModal(context, destinationInfo);
      },
    );
  }

  void _showDestinationModal(BuildContext context, String destinationInfo) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ajusta la hoja modal al contenido
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Información del Destino',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                destinationInfo,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Cerrar el modal
                  // Aquí puedes agregar la funcionalidad para "ir"
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, // Color de fondo del botón
                  foregroundColor: Colors.black,  // Color del texto
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                ),
                child: const Text('Ir'),
              ),
            ],
          ),
        );
      },
    );
  }
}
