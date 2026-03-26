import 'package:flutter/material.dart';
import 'package:flutter_app_datos/screens/home_screen.dart';
import 'package:flutter_app_datos/screens/ingreso_datos_screen.dart';
import 'package:flutter_app_datos/screens/login_screen.dart';
import 'package:flutter_app_datos/screens/perfil_screen.dart';
import 'package:flutter_app_datos/screens/pokemon_screen.dart';
import 'package:flutter_app_datos/service/pokemon_service.dart';

void main(){
  runApp(const MyApp());
  final service = PokemonService();
 /* try{
    final pokemon = await service.getPokemon('pikachu');
    print('Nombre: ${pokemon.name}');
    print('Altura: ${pokemon.height}');
    print('Peso: ${pokemon.weight}');

  }catch(e) {
      print('Error $e');
  }*/
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
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/inicio': (context) => const HomeScreen(),
        '/ingreso': (context) => const IngresoDatosScreen(),
        '/perfil': (context) => const PerfilScreen(),
        '/pokemon': (context) => const PokemonScreen(),
        '/login': (context) => const LoginScreen()
      },
    );
  }
}