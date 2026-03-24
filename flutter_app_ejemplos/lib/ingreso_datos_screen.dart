import 'package:flutter/material.dart';
import 'package:flutter_app_ejemplos/resumen_datos_screen.dart';
import 'package:flutter_app_ejemplos/widgest/curstom_botton_navigator_widget.dart';

class IngresoDatosScreen extends StatefulWidget {
  const IngresoDatosScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _IngresoDatosScreenState createState() => _IngresoDatosScreenState();
}

class _IngresoDatosScreenState extends State<IngresoDatosScreen> {
  TextEditingController controlador = TextEditingController();
  int _selectedIndex = 1;
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
      appBar: AppBar(title: const Text("Ingreso")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controlador,
              decoration: const InputDecoration(labelText: "Ingrese su nombre"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String nombre = controlador.text;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResumenDatosScreen(nombre: nombre),
                  ),
                );
              },
              child: const Text("Enviar"),
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