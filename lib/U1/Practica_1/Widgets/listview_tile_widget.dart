import 'package:flutter/material.dart';

class ListviewTileWidget extends StatelessWidget {
  const ListviewTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTileContactWidget(
            nombre: "Angel", telefono: "2941143015", sexo: "H"),
            //Divider(),
            SizedBox(height: 10,),
        ListTileContactWidget(
            nombre: "Dulce", telefono: "2941143015", sexo: "M"),
            SizedBox(height: 10,),
        ListTileContactWidget(
            nombre: "Gerardo", telefono: "2941143015", sexo: "H"),
            SizedBox(height: 10,),
        ListTileContactWidget(
            nombre: "Ana", telefono: "2941143015", sexo: "M")
      ],
    );
  }
}

class ListTileContactWidget extends StatelessWidget {
  final String nombre;
  final String telefono;
  final String sexo;
  const ListTileContactWidget(
      {super.key,
      required this.nombre,
      required this.telefono,
      required this.sexo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(nombre.toString().substring(0, 2).toUpperCase()),
      ),
      title: Text(nombre),
      subtitle: Text(telefono),
      tileColor: sexo == "H" ? Colors.blue :Colors.pink,
    );
  }
}
