import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Barateon'];

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("ListView Tipo 1"),
          backgroundColor: const Color.fromARGB(255, 19, 75, 112),
          foregroundColor: Colors.white),
      body: ListView(
        children: [
          ...options
              .map((e) => 
              ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                    title: Text(e),
                  ))
              .toList()
        ],
      ),
    );
  }
}
