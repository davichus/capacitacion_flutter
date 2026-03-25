import 'package:flutter/material.dart';
import 'package:flutter_app_datos/helpers/funciones.dart';
import 'package:flutter_app_datos/widgest/custom_navigation_bottom_widget.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class PerfilScreen extends StatefulWidget{
  const PerfilScreen({super.key});

  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}
class _PerfilScreenState extends State<PerfilScreen>{

  int currentIndex = 3;
   void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    Funciones.navegar(context, index);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
          title: const CustomTextWidget(
              texto: 'Perfil', color: Colors.blue),
        ),
        bottomNavigationBar: CustomNavigationBottomWidget(
              currentIndex: currentIndex,
              onTap: onTabTapped,
            ),
    );

  }
}