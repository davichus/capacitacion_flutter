import 'package:flutter/material.dart';
import 'package:flutter_app_datos/screens/ingreso_datos_screen.dart';
import 'package:flutter_app_datos/screens/perfil_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Datos',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const IngresoDatosScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/ingreso': (context) => const IngresoDatosScreen(),
        '/perfil': (context) => const PerfilScreen()
      },
    );
  }
}