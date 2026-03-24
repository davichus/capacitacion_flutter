import 'package:flutter/material.dart';
import 'package:flutter_app_ejemplos/widgest/curstom_botton_navigator_widget.dart';

class PerfilScreen extends StatefulWidget {

  const PerfilScreen({super.key});

  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  int _selectedIndex = 3;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        Navigator.pushNamed(context, '/ingreso');
      } else if (_selectedIndex == 3) {
        Navigator.pushNamed(context, '/perfil');
      } 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Avatar con icono
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            // Nombre dinámico
            const Text(
              "david navarrete", // Aquí podrías usar widget.nombre para mostrar el nombre ingresado
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Profesión
            const Text(
              "Docente",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            // Iconos
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, size: 30),
                SizedBox(width: 20),
                Icon(Icons.phone, size: 30),
                SizedBox(width: 20),
                Icon(Icons.person, size: 30),
              ],
            ),

            const SizedBox(height: 30),

            // Botón para actualizar (ejemplo)
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // aquí podrías cambiar datos en el futuro
                });
              },
              child: const Text("Actualizar"),
            )
          ],
        ),
      ),
            bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}