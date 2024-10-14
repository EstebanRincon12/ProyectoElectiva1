import 'package:flutter/material.dart';
import 'package:proyecto_electiva1/widgets/places.dart';

class AddToFavoritesScreen extends StatelessWidget {
  const AddToFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String mostVisitedPlace = "Edificio Central";
    
    final List<Place> favoritePlaces = [
      Place(
        name: "Edificio Central",
        address: "Carrera 10 # 20 - 34",
        faculty: "Administración",
        floors: 3,
        imageUrl: "https://www.uptc.edu.co/export/sites/default/universidad/acerca_de/imagenes_institucionales/img_005.jpg_1967860175.jpg", 
      ),
      Place(
        name: "Facultad de Ciencias de la Educación",
        address: "Carrera 10 # 20 - 10",
        faculty: "Educación",
        floors: 4,
        imageUrl: "https://images.app.goo.gl/6N9AXyc1VcR6ddfT9",
      ),
      Place(
        name: "Facultad de Ingeniería",
        address: "Calle 21 # 10 - 38",
        faculty: "Ingeniería",
        floors: 5,
        imageUrl: "https://images.app.goo.gl/feb4t2zcAr9n3Qko6",
      ),
      Place(
        name: "Facultad de Ciencias Agrarias",
        address: "Carrera 9 # 20 - 54",
        faculty: "Ciencias Agrarias",
        floors: 2,
        imageUrl: "https://images.app.goo.gl/ESzfQ6bsNKtvh45w7",
      ),
      Place(
        name: "Biblioteca Central",
        address: "Carrera 10 # 20 - 34",
        faculty: "Biblioteca",
        floors: 4,
        imageUrl: "https://images.app.goo.gl/56TtaLuf3xbEhScu5",
      ),
      Place(
        name: "Centro de Lenguas",
        address: "Calle 21 # 10 - 38",
        faculty: "Idiomas",
        floors: 1,
        imageUrl: "https://images.app.goo.gl/2GZenq1Q5yS9Wyj59",
      ),
      Place(
        name: "Auditorio",
        address: "Carrera 10 # 20 - 34",
        faculty: "Eventos",
        floors: 1,
        imageUrl: "",
      ),
      Place(
        name: "Edificio de Postgrados",
        address: "Carrera 9 # 20 - 34",
        faculty: "Postgrados",
        floors: 3,
        imageUrl: "",
      ),
      Place(
        name: "Estadio Universitario",
        address: "Calle 22 # 9 - 34",
        faculty: "Deportes",
        floors: 1,
        imageUrl: "https://images.app.goo.gl/fz8hmTgmk8ScKiaE8",
      ),
      Place(
        name: "Centro de Investigación y Desarrollo",
        address: "Carrera 9 # 20 - 34",
        faculty: "Investigación",
        floors: 3,
        imageUrl: "",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Añadir a Favoritos'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              children: [
                Text(
                  'Este es el lugar que más has visitado:',
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  mostVisitedPlace,
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: favoritePlaces.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Image.network(
                          favoritePlaces[index].imageUrl,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                favoritePlaces[index].name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Dirección: ${favoritePlaces[index].address}',
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Facultad: ${favoritePlaces[index].faculty}',
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Pisos: ${favoritePlaces[index].floors}',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}