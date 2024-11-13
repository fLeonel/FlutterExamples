import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Fondo de color ámbar
            Container(
              color: Colors.amber,
            ),
            // Imagen en la parte superior
            Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2022/11/01/17/46/candle-7562931_1280.jpg',
                fit: BoxFit.cover,
              ),
            ),
            
            const SizedBox(
              height: 90,
            ),// Contenido principal en el centro
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Campo de texto para el correo electrónico
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Correo electrónico',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16), // Espacio entre los campos de texto
                    // Campo de texto para la contraseña
                    TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24), // Espacio entre campos y botones
                    // Botón para iniciar sesión
                    ElevatedButton(
                      onPressed: () {
                        // Acción para iniciar sesión
                      },
                      child: const Text('Iniciar sesión'),
                    ),
                    const SizedBox(height: 16),
                    // Botón para registrarse
                    ElevatedButton(
                      onPressed: () {
                        // Acción para registrarse
                      },
                      child: const Text('Iniciar con google'),
                    ),
                    const SizedBox(height: 16),
                    // Botón para iniciar sesión con Google
                    IconButton(
                      onPressed: () {
                        // Acción para iniciar sesión con Google
                      },
                      icon: const Icon(Icons.access_time),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
