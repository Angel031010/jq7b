import 'package:flutter/material.dart';
import 'package:jq7b/U1/Practica_1/Widgets/container_widget.dart';

class ColumWidget extends StatelessWidget {
  const ColumWidget({super.key, required});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContainerWidget(fondo: Colors.white, texto: "Angel Ildefonso Mirón",), 
        ContainerWidget(fondo: Colors.white, texto: "ISC", ), 
        ],
    );
  }
}
