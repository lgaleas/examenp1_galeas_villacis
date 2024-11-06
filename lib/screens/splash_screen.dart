import 'dart:ui';
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
            mainAxisAlignment: MainAxisAlignment.start, // Alinea todo al inicio
            children: [
              const SizedBox(height: 230), // Aumento del espacio superior para bajar el contenido

              // Círculo decorativo con desenfoque y opacidad
              Stack(
                alignment: Alignment.center,
                children: [
                  // Círculo decorativo borroso y menos opaco
                  Opacity(
                    opacity: 0.3, // Ajuste de opacidad para hacerlo más visible
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Desenfoque en el círculo
                      child: Image.asset(
                        'assets/images/circulo.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // Decoración encima del círculo, ajustada hacia arriba
                  Positioned(
                    top: -10, // Ajuste hacia arriba
                    child: Image.asset(
                      'assets/images/decoracion circulo.png',
                      width: 100, // Tamaño ajustado para que abarque bien el círculo
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  // Texto debajo de las imágenes con separación
                  const Positioned(
                    top: 70, // Ajuste la posición del texto debajo de la decoración
                    child: Column(
                      children: [
                        Text(
                          'Daily Recipe',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10), // Espacio entre el título y subtítulo
                        Text(
                          'Cooking Done The Easy Way',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
              const Spacer(), // Espacio flexible para empujar los botones hacia abajo

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
