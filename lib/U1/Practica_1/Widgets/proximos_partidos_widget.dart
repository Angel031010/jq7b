import 'package:flutter/material.dart';
import 'package:jq7b/U1/Practica_1/Models/proximos_partidos.dart';

class Proximospartidoswidget extends StatelessWidget {
  Proximospartidoswidget({super.key});

  final List<ProximoPartido> _proximosPartidos = [
    ProximoPartido(local: "Cruz Azul", visitante: "América", fecha: "2023-04-15", localIcon: "assets/Cruz Azul.png", visitanteIcon: "assets/America.png"),
    ProximoPartido(local: "Monterrey", visitante: "Tigres", fecha: "2023-04-15", localIcon: "assets/Cruz Azul.png", visitanteIcon: "assets/America.png"),
    ProximoPartido(local: "Real Madrid", visitante: "Barcelona", fecha: "2023-04-15", localIcon: "assets/Cruz Azul.png", visitanteIcon: "assets/America.png"),
    ProximoPartido(local: "Manchester United", visitante: "Liverpool", fecha: "2023-04-15", localIcon: "assets/Cruz Azul.png", visitanteIcon: "assets/America.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _proximosPartidos.length,
        itemBuilder: (context, index) {
          final partido = _proximosPartidos[index];
          return Card(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(partido.localIcon, width: 40, height: 40, fit: BoxFit.cover),
                          const SizedBox(width: 8),
                          Text(
                            partido.local,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Image.asset(partido.visitanteIcon, width: 40, height: 40, fit: BoxFit.cover),
                          const SizedBox(width: 8),
                          Text(
                            partido.visitante,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Fecha
                  Text(
                    partido.fecha,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}