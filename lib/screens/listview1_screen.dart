import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widget_reutilizable.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Casas de Juego de Tronos"),
        //backgroundColor: const Color.fromARGB(255, 19, 75, 112),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          final casa = options[index];
          return ListTile(
            title: Text(casa),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    switch (casa) {
                      case 'Targaryen':
                        return const WidgetReutilizable(
                          titulo: 'Targaryen',
                          descripcion: 'Casa de dragones y fuego.',
                          imagenUrl:
                              'https://static.wikia.nocookie.net/hieloyfuego/images/4/4d/Casa_Targaryen_estandarte.png/revision/latest?cb=20161230200319.jpg',
                        );
                      case 'Stark':
                        return const WidgetReutilizable(
                          titulo: 'Stark',
                          descripcion: 'Casa del norte, leales y fuertes.',
                          imagenUrl:
                              'https://static.wikia.nocookie.net/hieloyfuego/images/3/32/Casa_Stark_escudo.png/revision/latest?cb=20240922215518.jpg',
                        );
                      case 'Lannister':
                        return const WidgetReutilizable(
                          titulo: 'Lannister',
                          descripcion: 'Casa de oro y poder.',
                          imagenUrl:
                              'https://static.wikia.nocookie.net/hieloyfuego/images/6/66/Casa_Lannister_escudo.png/revision/latest?cb=20161230202341.jpg',
                        );
                      case 'Baratheon':
                        return const WidgetReutilizable(
                          titulo: 'Baratheon',
                          descripcion: 'Casa del trueno y la tormenta.',
                          imagenUrl:
                              'https://static.wikia.nocookie.net/hieloyfuego/images/1/13/Casa_Baratheon_estandarte.png/revision/latest?cb=20161230200810.jpg',
                        );
                      default:
                        return const SizedBox.shrink();
                    }
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
