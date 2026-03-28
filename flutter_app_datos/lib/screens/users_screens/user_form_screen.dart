import 'package:flutter/material.dart';
import 'package:flutter_app_datos/controller/user_controller.dart';
import 'package:flutter_app_datos/models/user_model.dart';
import 'package:flutter_app_datos/screens/users_screens/user_list_screen.dart';
import 'package:flutter_app_datos/widgest/custom_button_widget.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class UserFormScreen extends StatefulWidget {
  final User? user;
  const UserFormScreen({super.key, this.user});

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final userController = UserController();
  late TextEditingController txtNameCtrl;
  late TextEditingController txtEmailCtrl;
  late TextEditingController txtPasswordCtrl;

  @override
  void initState(){
    super.initState();
    txtNameCtrl = TextEditingController(text: widget.user?.name ?? '');
    txtEmailCtrl = TextEditingController(text: widget.user?.email ?? '');
    txtPasswordCtrl = TextEditingController(text: widget.user?.password ?? '');
  }

  void saveUser() async {
    if (_formKey.currentState!.validate()) {
      final user = User(
        id: widget.user?.id,
        name: txtNameCtrl.text,
        email: txtEmailCtrl.text,
        password: txtPasswordCtrl.text,
      );
      if (widget.user == null) {
        await userController.addUser(user);
      } else {
      }
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    }
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const CustomTextWidget(
              texto: 'Registrar datos', color: Colors.white),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txtNameCtrl,
                  decoration: const InputDecoration(
                      labelText: 'Ingrese su nombre', icon: Icon(Icons.person)),
                ),
                const SizedBox(height: 20),
                      TextField(
                  controller: txtEmailCtrl,
                  decoration: const InputDecoration(
                      labelText: 'Ingrese su email', icon: Icon(Icons.person)),
                ),
                const SizedBox(height: 20),
                      TextField(
                  controller: txtPasswordCtrl,
                  decoration: const InputDecoration(
                      labelText: 'Ingrese su contraseña', icon: Icon(Icons.person)),
                ),
                const SizedBox(height: 20),
                CustomButtonWidget(
                    onPressed: () {
                      saveUser();
                      Navigator.push(context,
                          MaterialPageRoute(
                          builder: (context) =>
                             const UserListScreen(),
                        ));
                    },
                    texto: 'Guardar'),   
              ],
            )
            ),
    );
  }
}
