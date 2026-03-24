import 'package:flutter/material.dart';
import 'package:flutter_app_ejemplos/funciones.dart';
import 'package:flutter_app_ejemplos/widgest/curstom_botton_navigator_widget.dart';

class ResumenDatosScreen extends StatelessWidget {
  final String nombre;
  final Funciones funciones = Funciones();
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    _selectedIndex = index;
  }
  // ignore: use_key_in_widget_constructors
  ResumenDatosScreen({required this.nombre});

  @override
  Widget build(BuildContext context) {
    String saludo = funciones.obtenerSaludo(nombre);
    return Scaffold(
      appBar: AppBar(title: const Text("Resultado")),
      body: Center(
        child: Text(
          saludo,
          style: const TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}