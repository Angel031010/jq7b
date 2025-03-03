import 'package:flutter/material.dart';
import 'package:jq7b/U1/Practica_1/Models/persona.dart';

class ListviewBuilderWidget extends StatelessWidget {
  ListviewBuilderWidget({super.key});

  final List<Persona> _personas = [
    Persona(nombre: "Hugo", sexo: "H", telefono: "1234567890"),
    Persona(nombre: "Maria", sexo: "M", telefono: "0987654321"),
    Persona(nombre: "Luis", sexo: "H", telefono: "1122334455")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _personas.length,
      itemBuilder: (context, index) {
        Persona persona = _personas[index];
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Text(
                    persona.nombre.toString().substring(0, 2).toUpperCase()),
              ),
              title: Text(persona.nombre),
              subtitle: Text(persona.telefono),
              tileColor: persona.sexo == "H" ? const Color.fromARGB(255, 23, 209, 255) : const Color.fromARGB(255, 255, 98, 151),
            ),
            const SizedBox(
              height: 2,
            )
          ],
        );
      },
    );
  }
}
