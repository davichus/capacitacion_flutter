import 'package:flutter/material.dart';
import 'package:flutter_app_datos/helpers/funciones.dart';
import 'package:flutter_app_datos/widgest/custom_navigation_bottom_widget.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{

  int currentIndex = 0;
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
              texto: 'Inicio', color: Colors.blue),
        ),
        bottomNavigationBar: CustomNavigationBottomWidget(
              currentIndex: currentIndex,
              onTap: onTabTapped,
            ),
    );

  }
}