
import 'package:flutter/material.dart';
import 'package:jq7b/U1/Practica_1/Models/partido.dart';

class PartidoCardWidget extends StatelessWidget {
  final Partido partido;
  final int noPartido;

  PartidoCardWidget(
      {super.key, required this.partido, required this.noPartido});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Partido ${noPartido.toString()}'),
        Row(children: [
          SizedBox(width: 50),
          CircleAvatar(child: Image.asset(partido.imageLocal)),
          SizedBox(width: 50),
          Text(partido.local)
        ]),
        Row(children: [
          SizedBox(width: 50),
          CircleAvatar(child: Image.asset(partido.imageVisitante)),
          SizedBox(width: 50),
          Text(partido.visitante)
        ])
      ],
    );
  }
}