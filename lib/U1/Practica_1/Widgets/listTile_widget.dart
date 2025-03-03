import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green[300],
        child: Text("A"),
      ),
      title: Text("Ángel Ildefonso Mirón"),
      subtitle: Text("angel@gmail.com"),
      trailing: Icon(Icons.arrow_right_alt_sharp),
    );
  }
}