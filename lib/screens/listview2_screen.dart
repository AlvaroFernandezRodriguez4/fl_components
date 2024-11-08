import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Barateon'];

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("ListView Tipo 2"),
            backgroundColor: const Color.fromARGB(255, 19, 75, 112),
            foregroundColor: Colors.white),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                    title: Text(options[index]),
                  ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length
      )
    );
  }
}
