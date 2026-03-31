import 'package:flutter_app_datos/models/user_model.dart';
import 'package:flutter_app_datos/service/db_service.dart';
import 'package:flutter_app_datos/service/firebase_user_service.dart';

class UserController{
  final DbService _dbService = DbService();
  final FirebaseUserService _firebaseUserService = FirebaseUserService();
  Future<List<User>> getAllUsers() async{
    return await _firebaseUserService.getUsers();
  }
  Future<void> addUser(User user) async{
    await _firebaseUserService.addUser(user);
  }
}