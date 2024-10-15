import 'package:flutter/material.dart';

class AddSiteModal extends StatefulWidget {
  const AddSiteModal({super.key});

  @override
  _AddSiteModalState createState() => _AddSiteModalState();
}

class _AddSiteModalState extends State<AddSiteModal> {
  final _formKey = GlobalKey<FormState>();
  String _siteName = '';
  String _description = '';
  String _location = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              // Campo para el nombre del sitio
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nombre del sitio',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _siteName = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese el nombre del sitio';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              
              // Campo para la descripción
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Descripción',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _description = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese una descripción';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Campo para la ubicación
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Ubicación',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _location = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese la ubicación';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Botón para añadir imagen
              ElevatedButton(
                onPressed: () {
                  // Lógica para añadir imagen
                  print('Añadir imagen');
                },
                child: const Text('Añadir imagen'),
              ),

              const SizedBox(height: 16),

              // Botón para crear el sitio
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Lógica para crear el sitio
                    print('Sitio creado: $_siteName, $_description, $_location');
                    Navigator.pop(context); // Cierra el modal
                  }
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, 
                  backgroundColor: Colors.yellow,
                ),
                child: const Text('Crear'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
