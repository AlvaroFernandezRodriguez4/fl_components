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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
