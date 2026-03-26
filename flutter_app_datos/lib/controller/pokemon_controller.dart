import 'package:flutter_app_datos/models/pokemon_model.dart';
import 'package:flutter_app_datos/service/pokemon_service.dart';

class PokemonController{
  final PokemonService _service = PokemonService();

  Future<Pokemon> fetchPokemon(String name){
    return _service.getPokemon(name);
  }
  
}