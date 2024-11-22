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
              child: Column(
                children: [
                  FadeInImage(
                    image: NetworkImage(imagenUrl),
                    placeholder: const AssetImage('assets/Loading_icon.gif'),
                    width: double.infinity,
                    fit: BoxFit.contain,
                    fadeInDuration: const Duration(milliseconds: 2000),
                    imageErrorBuilder: (context, error, stackTrace) {
                      return const SizedBox(
                        height: 200, 
                        child: Center(
                          child: Icon(
                            Icons.broken_image,
                            size: 100,
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      descripcion,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white
              ),
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
