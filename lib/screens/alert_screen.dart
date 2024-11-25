import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
   // print('Hola mundo');ç
   showDialog(
    barrierDismissible: true,
    context: context, 
    builder: (context){
      return AlertDialog(
        title: Text('Alerta'),
        content:
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Contenido del mensaje de alerta'),
            SizedBox(height: 10,),
            FlutterLogo(size: 100,)
          ],
        ),
        
      );
    }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
         child: ElevatedButton(
          onPressed: () => displayDialog(context), 
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text('Mostrar alerta', style: TextStyle(fontSize: 20),),
          )
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
        ),
    );
  }
}