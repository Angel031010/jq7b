import 'package:flutter/material.dart';

class Text_Prueba extends StatelessWidget {
  const Text_Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Primer Widget pinino',
      style: TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.red),
    );
  }
}
