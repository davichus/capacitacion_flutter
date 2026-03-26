import 'package:flutter_app_datos/infraestructure/api_client.dart';
import 'package:flutter_app_datos/models/pokemon_model.dart';

class PokemonService{
  Future<Pokemon> getPokemon(String name) async{
    try{
      final response = await ApiClient.dio.get('/pokemon/$name');

      return Pokemon.fromJson(response.data);
      
    } catch(e)
    {
        throw Exception('Error en conectar al api');
    }
  }
}