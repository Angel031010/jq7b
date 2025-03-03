import 'package:flutter/material.dart';

class Ejercicio1 extends StatelessWidget {
  Ejercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          FlutterLogo(
            size: 120
          ),
        Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person, color: Colors.blue, size: 60,),
                Text("Ángel Ildefonso Mirón")
              ],
            ),
            Row(
              children: [
                Icon(Icons.school, color: Colors.brown, size: 60,),
                Text("Sistemas Computacionales")
              ],
            ),
          ],
        )
        ],
      ),
    );
  }
}
