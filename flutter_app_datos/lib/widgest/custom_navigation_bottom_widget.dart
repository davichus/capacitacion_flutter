import 'package:flutter/material.dart';

class CustomNavigationBottomWidget extends StatelessWidget{
   final int currentIndex;
   final Function(int) onTap;

  const CustomNavigationBottomWidget(
    {super.key, 
    required this.currentIndex, 
    required this.onTap});

    @override
    Widget build(BuildContext context) {
      return BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Ingreso Datos',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Perfil',
          ),
         BottomNavigationBarItem(
            icon: Icon(Icons.catching_pokemon),
            label: 'Pokemon',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir',
          ),
        ],
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      );
    }  
}