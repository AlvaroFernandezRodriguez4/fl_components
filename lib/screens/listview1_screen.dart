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
                          descripcion:
                              'La Casa Targaryen, de ascendencia Valyria, gobernó los Siete Reinos durante casi trescientos años desde Desembarco del Rey, Rocadragón y Refugio Estival. Su emblema es un dragón de tres cabezas, y su lema es "Fuego y Sangre". Las espadas ancestrales de acero valyrio, Fuegoscuro y Hermana Oscura, están desaparecidas.',
                          imagenUrl:
                              'https://static.wikia.nocookie.net/hieloyfuego/images/4/4d/Casa_Targaryen_estandarte.png/revision/latest?cb=20161230200319.jpg',
                        );
                      case 'Stark':
                        return const WidgetReutilizable(
                          titulo: 'Stark',
                          descripcion:
                              'La Casa Stark de Invernalia es una casa noble del Norte. Su asentamiento es Invernalia. Durante siglos, fue la casa principal del Norte y su linaje se extiende hasta los Primeros Hombres, gobernando el Norte como reyes por derecho propio. Su emblema es un lobo huargo de cenizo corriendo sobre campo de plata. Su lema es Se acerca el Invierno. Su mandoble ancestral de acero valyrio se llamaba Hielo.',
                          imagenUrl:
                              'https://static.wikia.nocookie.net/hieloyfuego/images/3/32/Casa_Stark_escudo.png/revision/latest?cb=20240922215518.jpg',
                        );
                      case 'Lannister':
                        return const WidgetReutilizable(
                          titulo: 'Lannister',
                          descripcion:
                              'La Casa Lannister de Roca Casterly es la principal casa noble de las Tierras del Oeste. Su asentamiento es Roca Casterly. Su emblema es un león rampante de oro sobre campo de gules. Su lema es ¡Oye mi Rugido!, aunque su lema no oficial, Un Lannister siempre paga sus deudas, es más conocido.',
                          imagenUrl:
                              'https://static.wikia.nocookie.net/hieloyfuego/images/6/66/Casa_Lannister_escudo.png/revision/latest?cb=20161230202341.jpg',
                        );
                      case 'Baratheon':
                        return const WidgetReutilizable(
                          titulo: 'Baratheon',
                          descripcion:
                              'La Casa Baratheon de Bastión de Tormentas es una casa noble de las Tierras de la Tormenta. Su asentamiento es Bastión de Tormentas, que fue residencia de la Casa Durrandon, los antiguos Reyes de la Tormenta. Su emblema es un venado coronado de sable sobre campo de oro. Su lema es Nuestra es la Furia.',
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
