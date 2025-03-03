import 'package:flutter/material.dart';/*
import 'package:jq7b/U1/Practica_1/Widgets/card_widget.dart';
import 'package:jq7b/U1/Practica_1/Widgets/partidos_widget.dart';*/
import 'package:jq7b/U1/Practica_1/Widgets/proximos_partidos_widget.dart';

import 'package:jq7b/U1/Practica_1/Widgets/drawer_widget.dart';
/*import 'package:jq7b/U1/Practica_1/Widgets/ejercicio_1.dart';
import 'package:jq7b/U1/Practica_1/Widgets/ejercicio_3.dart';
*/

class Scaffold_Prueba extends StatelessWidget {
  const Scaffold_Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('JQ7B - AIM' ,style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.purple)
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          //centerTitle: true,
          actions: [
            IconButton(onPressed: (){},
            icon: const Icon(Icons.add_shopping_cart_outlined),),
            IconButton(onPressed: (){},
            icon: const Icon(Icons.search),),
            IconButton(onPressed: () {},
            icon: const Icon(Icons.more_vert),),
            IconButton(onPressed: () {},
            icon: const Icon(Icons.favorite_outline),),
            
          ],
        ),
        body: Proximospartidoswidget(),
        drawer: DrawerWidget(),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.green,
        child: const Icon(Icons.messenger_outline, color: Colors.white,),
        ),
      );
  }
}