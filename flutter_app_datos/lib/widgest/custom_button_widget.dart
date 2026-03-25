import 'package:flutter/material.dart';
import 'package:flutter_app_datos/widgest/custom_text_wdiget.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String texto;

  const CustomButtonWidget({
    super.key,
    required this.onPressed,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: CustomTextWidget(
        texto: texto,
        color: Colors.blue,
      ),
    );
  }
}
