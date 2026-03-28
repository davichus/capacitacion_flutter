import 'package:flutter/material.dart';
import 'package:flutter_app_datos/controller/user_controller.dart';
import 'package:flutter_app_datos/models/user_model.dart';
import 'package:flutter_app_datos/screens/home_screen.dart';
import 'package:flutter_app_datos/screens/ingreso_datos_screen.dart';
import 'package:flutter_app_datos/screens/login_screen.dart';
import 'package:flutter_app_datos/screens/perfil_screen.dart';
import 'package:flutter_app_datos/screens/pokemon_screen.dart';
import 'package:flutter_app_datos/service/pokemon_service.dart';

Future<void> main() async {
  runApp(const MyApp());
  User user = User(
    name: 'david navarrete', 
    email: 'dnavarrete@itsjapon.edu.ec', 
    password: '12334');

    UserController userController = UserController();
    try{
      await userController.addUser(user);
      List<User> lista = await userController.getAllUsers();
      for(var i in lista){
        print(i.name);
        print(i.email);
        print(i.password);
      }
    }catch (e){
      print('erro: $e');
    }
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