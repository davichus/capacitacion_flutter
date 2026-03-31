import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app_datos/models/user_model.dart';

class FirebaseUserService {
  final CollectionReference usersCollection = 
        FirebaseFirestore.instance.collection('users');

  Future<void> addUser(User user) async{
    try{
      await usersCollection.add(user.toMap());

    }catch(e){
      throw Exception('Error al agregar usuario: $e');

    }
  }
  Future<List<User>> getUsers() async{
    final snaphot = await usersCollection.get();

    return snaphot.docs.map((doc){
      final data = doc.data() as Map<String, dynamic>;
      return User(
        id: null,
        name: data['name'],
        email: data['email'],
        password: data['password']
      );
    }).toList();
  }

}