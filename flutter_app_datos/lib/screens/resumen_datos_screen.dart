import 'package:flutter/material.dart';
import 'package:flutter_app_datos/helpers/funciones.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class ResumenDatosScreen extends StatelessWidget{
  final String nombre;
  final Funciones funciones = Funciones();

  // ignore: use_key_in_widget_constructors
  ResumenDatosScreen({required this.nombre});
  @override
  Widget build(BuildContext context) {
    String saludo = funciones.obtenerSaludos(nombre);
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(texto: 'Resumen de Datos', color: Colors.blue,),
      ),
      body: Center(
        child: Text(saludo, 
           style: const TextStyle(fontSize: 20, 
                  color: Colors.red),),
      ),
    );
  }
}