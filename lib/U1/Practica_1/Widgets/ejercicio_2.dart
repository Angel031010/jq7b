import 'package:flutter/material.dart';
import 'package:jq7b/U1/Practica_1/Models/alumno.dart';

class Ejercicio2 extends StatelessWidget {
  Ejercicio2({super.key});

  final List<Alumno> _alumnos = [
    Alumno(nombre: "Hugo", apellido: "Garcia", nControl: "21TE0293", carrera: "Sistemas"),
    Alumno(nombre: "Gerardo", apellido: "Hernandez", nControl: "21TE0292", carrera: "Mecatronica"),
    Alumno(nombre: "Jose", apellido: "Perez", nControl: "21TE0291", carrera: "Informatica"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _alumnos.length,
      itemBuilder: (context, index) {
        Alumno persona = _alumnos[index];
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Text(
                    persona.nombre.toString().substring(0, 1).toUpperCase() +persona.apellido.toString().substring(0, 1).toUpperCase()),
              ),
              title: Text(persona.nombre),
              subtitle: Text(persona.nControl),
              tileColor: persona.carrera == "Sistemas" ? const Color.fromARGB(255, 0, 255, 34) : const Color.fromARGB(255, 255, 255, 255),
              trailing: persona.carrera == "Sistemas" ? const Icon(Icons.computer, color: Colors.blue) : null,
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
