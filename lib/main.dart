import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image.asset('assets/images/tu_imagen.png'), // Reemplaza con el nombre de tu imagen
        ),
      ),
    );
  }
}
