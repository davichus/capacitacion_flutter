import 'package:flutter/material.dart';
import 'package:flutter_app_datos/controller/user_controller.dart';
import 'package:flutter_app_datos/helpers/funciones.dart';
import 'package:flutter_app_datos/models/user_model.dart';
import 'package:flutter_app_datos/screens/users_screens/user_form_screen.dart';
import 'package:flutter_app_datos/widgest/custom_navigation_bottom_widget.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final UserController userController = UserController();
  final Funciones funciones = Funciones();

  List<User> listausers = [];
  int currentIndex = 3;

  @override
  void initState() {
    super.initState();
    loadUser();
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
     Funciones.navegar(context, index);
  }

  Future<void> loadUser() async {
    final users = await userController.getAllUsers();

    if (!mounted) return; // 👈 evita error si el widget ya no existe

    setState(() {
      listausers = users;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(
          texto: 'Registro de Usuarios',
          color: Colors.black,
        ),
      ),
      body: listausers.isEmpty
          ? const Center(child: CircularProgressIndicator()) // 👈 loading
          : ListView.builder(
              itemCount: listausers.length,
              itemBuilder: (context, index) {
                final user = listausers[index];

                return ListTile(
                  title: CustomTextWidget(
                    texto: user.name ?? '',
                    color: Colors.black,
                  ),
                  subtitle: CustomTextWidget(
                    texto: user.email ?? '',
                    color: Colors.black,
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const UserFormScreen(),
            ),
          );
          loadUser(); 
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: CustomNavigationBottomWidget(
        currentIndex: currentIndex,
        onTap: onTabTapped,
      ),
    );
  }
}
