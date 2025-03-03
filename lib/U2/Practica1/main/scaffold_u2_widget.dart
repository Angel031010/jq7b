import 'package:flutter/material.dart';
import 'package:jq7b/U2/Practica1/provider/contador_provider.dart';
import 'package:jq7b/U2/Practica1/screens/focos_widget.dart';
import 'package:provider/provider.dart';
class ScaffoldU2Widget extends StatelessWidget {
  const ScaffoldU2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unidad 2"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
       floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<ContadorProvider>().incrementar();
      }, child: Icon(Icons.add),),
      body: FocoWidget(),
    );
  }
}