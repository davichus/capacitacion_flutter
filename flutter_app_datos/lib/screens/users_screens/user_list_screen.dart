import 'package:flutter/material.dart';
import 'package:flutter_app_datos/controller/user_controller.dart';
import 'package:flutter_app_datos/models/user_model.dart';
import 'package:flutter_app_datos/screens/users_screens/user_form_screen.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final UserController userController = UserController();
  List<User> listausers = [];

  @override
  void initState() {
    super.initState();
    loadUser();
  }

  void loadUser() async {
    final users = await userController.getAllUsers();
    setState(() => listausers = users);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const CustomTextWidget(
              texto: 'Registro de Usuarios', color: Colors.black)),
      body: ListView.builder(
        itemCount: listausers.length,
        itemBuilder: (context, index) {
          final user = listausers[index];
          return ListTile(
            title: CustomTextWidget(texto: user.name, color: Colors.black),
            subtitle: CustomTextWidget(texto: user.email, color: Colors.black),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const UserFormScreen()),
        );
        loadUser();
      }),
    );
  }
}
