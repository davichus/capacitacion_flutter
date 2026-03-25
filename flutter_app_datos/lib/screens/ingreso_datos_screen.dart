import 'package:flutter/material.dart';
import 'package:flutter_app_datos/screens/resumen_datos_screen.dart';
import 'package:flutter_app_datos/widgest/custom_button_widget.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class IngresoDatosScreen extends StatefulWidget {
  const IngresoDatosScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _IngresoDatosScreenState createState() => _IngresoDatosScreenState();
}

class _IngresoDatosScreenState extends State<IngresoDatosScreen> {
  TextEditingController txtcontrolador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const CustomTextWidget(
              texto: 'Ingreso de Datos', color: Colors.white),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txtcontrolador,
                  decoration: const InputDecoration(
                      labelText: 'Ingrese su nombre', icon: Icon(Icons.person)),
                ),
                const SizedBox(height: 20),
                CustomButtonWidget(
                    onPressed: () {
                      String nombre = txtcontrolador.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ResumenDatosScreen(nombre: nombre),
                        ),
                      );
                    },
                    texto: 'Enviar')
              ],
            )));
  }
}
