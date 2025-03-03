import 'package:flutter/material.dart';
//import 'package:jq7b/U1/Practica_1/Screens/sfc.dart';
import 'package:jq7b/U2/Practica1/main/scaffold_u2_widget.dart';
import 'package:jq7b/U2/Practica1/provider/contador_provider.dart';
import 'package:jq7b/U2/Practica2/screens/contactos_screen.dart';
import 'package:jq7b/U2/Practica2/screens/tema_screen.dart';
import 'package:jq7b/U2/Practica3/coctail_screen.dart';
import 'package:jq7b/U2/Practica3/dog_screen.dart';
import 'package:provider/provider.dart';

void main () {
  runApp(MyApp());
}	

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContadorProvider()),
      ],
      child: MaterialApp(
        title: 'JQ7B - AIM',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        //home: const ScaffoldU2Widget()
        routes: {
          '/': (_) => const CocktailScreen(),
          '/tema': (_) => const TemaScreen(),
          '/drw': (_) => const ScaffoldU2Widget(),
        },
        initialRoute: '/',
      ),
    );
  }
  
}