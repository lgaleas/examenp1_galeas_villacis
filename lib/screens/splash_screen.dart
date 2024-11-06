import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen de fondo
          Image.asset(
            'assets/images/fondoApp.jpg',
            fit: BoxFit.cover,
          ),
          // Contenido de la pantalla
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 100), // Espacio en la parte superior

              // Círculo decorativo, decoración y texto superpuestos
              Stack(
                alignment: Alignment.center,
                children: [
                  // Círculo decorativo en el fondo
                  Image.asset(
                    'assets/images/circulo.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                  // Decoración encima del círculo
                  Image.asset(
                    'assets/images/decoracion circulo.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                  // Texto encima de las imágenes
                  Column(
                    children: const [
                      Text(
                        'Daily Recipe',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Cooking Done The Easy Way',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Botones en la parte inferior
              Padding(
                padding: const EdgeInsets.only(bottom: 40), // Espacio inferior
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
