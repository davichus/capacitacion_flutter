import 'package:flutter/material.dart';

class Funciones {
  String obtenerSaludos(String nombre) => 'Hola, $nombre!, bienvenido';

  static void navegar(BuildContext context, int index) {
    if (index == 0) {
      Navigator.pushNamed(context, '/inicio');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/ingreso');
    } else if (index == 3) {
      Navigator.pushNamed(context, '/perfil');
    } else if (index == 4) {
      Navigator.pushNamed(context, '/pokemon');
    }
    else if (index == 5) {
      Navigator.pushNamed(context, '/login');
    }
  }
}
