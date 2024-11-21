import 'package:flutter/material.dart';

class WidgetReutilizable extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String imagenUrl;

  const WidgetReutilizable({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              elevation: 8, 
            )
          ],
        ),
      ),
    );
  }
}
