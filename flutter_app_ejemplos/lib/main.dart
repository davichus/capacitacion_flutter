import 'package:flutter/material.dart';
import 'package:flutter_app_ejemplos/ingreso_datos_screen.dart';
import 'package:flutter_app_ejemplos/perfil_datos_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IngresoDatosScreen(),
      routes: {
        '/ingreso': (context) => const IngresoDatosScreen(),
        '/perfil': (context) => const PerfilScreen(),
      },
    );
  }
}
