import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String texto;

  const CustomTextWidget(this.texto, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 24, color: Colors.blue),
    );
  }
}