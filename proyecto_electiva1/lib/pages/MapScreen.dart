import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:proyecto_electiva1/pages/add_favorite_screen.dart';
import 'package:proyecto_electiva1/widgets/destinations.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const _SearchBar(),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
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
          const Destinations(),
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.black,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.favorite, color: Colors.white),
            label: 'Añadir a Favoritos',
            backgroundColor: Colors.blue,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddToFavoritesScreen(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.directions_walk, color: Colors.white),
            label: 'Comenzar Recorrido',
            backgroundColor: Colors.green,
            onTap: () {
              print('Comenzar Recorrido');
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.favorite_border, color: Colors.white),
            label: 'Eliminar de Favoritos',
            backgroundColor: Colors.red,
            onTap: () {
              print('Eliminar de Favoritos');
            },
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatefulWidget {
  const _SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<_SearchBar> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(_focusNode);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          controller: _controller,
          focusNode: _focusNode,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          decoration: const InputDecoration(
            hintText: 'Buscar destino...',
            prefixIcon: Icon(Icons.search, color: Colors.black),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
          ),
          onSubmitted: (value) {
            print("Buscar: $value");
          },
        ),
      ),
    );
  }
}