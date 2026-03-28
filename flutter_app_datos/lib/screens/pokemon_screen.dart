import 'package:flutter/material.dart';
import 'package:flutter_app_datos/controller/pokemon_controller.dart';
import 'package:flutter_app_datos/helpers/funciones.dart';
import 'package:flutter_app_datos/models/pokemon_model.dart';
import 'package:flutter_app_datos/widgest/custom_button_widget.dart';
import 'package:flutter_app_datos/widgest/custom_navigation_bottom_widget.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class PokemonScreen extends StatefulWidget{
  const PokemonScreen({super.key});

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}
class _PokemonScreenState extends State<PokemonScreen>{
  final TextEditingController txtNameController = TextEditingController();
  final PokemonController controllerPokemnon = PokemonController();

  Pokemon? pokemon;
  bool isLoading = false;
  String error = '';

   int currentIndex = 4;
   void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    Funciones.navegar(context, index);
  }
  void buscarPokemon() async{
    setState(() {
      isLoading = true;
      error = '';
      pokemon = null;
    });

    try{
      final result = await controllerPokemnon.fetchPokemon(txtNameController.text);
      setState(() {
        pokemon = result;
      });

    }catch (e){
      setState(() {
        error = 'Pokemon no encontrado' ;
      });
    } finally{
      setState(() {
        isLoading: false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const CustomTextWidget(
              texto: 'Buscar Pokemon', color: Colors.blue),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txtNameController,
                  decoration: const InputDecoration(
                      labelText: 'Ingrese nombre del pokemon', icon: Icon(Icons.catching_pokemon)),
                ),
                const SizedBox(height: 20),
                CustomButtonWidget(
                    onPressed: () {
                      buscarPokemon();
                    },
                    texto: 'Buscar'),
                const SizedBox(height: 20),
                if(isLoading) const CircularProgressIndicator(),
                if(error.isEmpty)
                  CustomTextWidget(
                    texto: error, color: Colors.red),
                if(pokemon != null)
                  Column(
                    children: [
                      CustomTextWidget(texto: 'Nombre: ${pokemon!.name}', color: Colors.black),
                      CustomTextWidget(texto: 'Peso: ${pokemon!.weight}', color: Colors.black),
                      CustomTextWidget(texto: 'Altura: ${pokemon!.height}', color: Colors.black),
                    ],
                  )
              ],
            )
            ),
            bottomNavigationBar: CustomNavigationBottomWidget(
              currentIndex: currentIndex,
              onTap: onTabTapped,
            ),
    );
  }

}