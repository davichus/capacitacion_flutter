import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String texto;
  final Color color;
  const CustomTextWidget({super.key, 
  required this.texto, required this.color});

  @override
  Widget build(BuildContext context){
    return Text(texto, style: TextStyle(color: color));
  }
}