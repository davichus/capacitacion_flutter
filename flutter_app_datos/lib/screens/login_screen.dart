import 'package:flutter/material.dart';
import 'package:flutter_app_datos/screens/home_screen.dart';
import 'package:flutter_app_datos/widgest/custom_button_widget.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtUsuarioControlador = TextEditingController();
  TextEditingController txtContraseniaControlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const CustomTextWidget(
              texto: 'Iniciar Session', color: Colors.blue),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txtUsuarioControlador,
                  decoration: const InputDecoration(
                      labelText: 'Ingrese su usuario', icon: Icon(Icons.person)),
                ),
                const SizedBox(height: 20),
                  TextField(
                  controller: txtContraseniaControlador,
                 
                  decoration: const InputDecoration(
                      labelText: 'Ingrese su contraseña', icon: Icon(Icons.person)),
                ),
                const SizedBox(height: 20),
                CustomButtonWidget(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const HomeScreen(),
                        ),
                      );
                    },
                    texto: 'Ingresar')
              ],
            )
            )
    );
  }
}