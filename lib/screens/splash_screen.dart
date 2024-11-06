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
            'assets/images/fondoApp.jpg', // Reemplaza con el nombre exacto de tu imagen
            fit: BoxFit.cover,
          ),
          // Contenido de la pantalla
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Espacio en la parte superior
              const SizedBox(height: 40),

              // Título y subtítulo centrados
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
                  SizedBox(height: 10),
                  Text(
                    'Cooking Done The Easy Way',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),

              // Botones en la parte inferior
              Padding(
                padding: const EdgeInsets.only(bottom: 40), // Espacio inferior para que no toque el borde
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register'); // Redirige a la pantalla de registro
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
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login'); // Redirige a la pantalla de inicio de sesión
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
