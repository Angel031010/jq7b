import 'package:flutter/material.dart';
import 'package:jq7b/U1/Practica_1/Widgets/card_widget.dart';
class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardWidget(),
        CardWidget(),
        CardWidget(),
        CardWidget(),
        CardWidget(),
        CardWidget(),
        CardWidget(),
      ],
    );
  }
}