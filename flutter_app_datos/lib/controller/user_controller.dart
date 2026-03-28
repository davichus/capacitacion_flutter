import 'package:flutter_app_datos/models/user_model.dart';
import 'package:flutter_app_datos/service/db_service.dart';

class UserController{
  final DbService _dbService = DbService();
  Future<List<User>> getAllUsers() async{
    return await _dbService.getUsers();
  }
  Future<void> addUser(User user) async{
    await _dbService.insertUser(user);
  }
}