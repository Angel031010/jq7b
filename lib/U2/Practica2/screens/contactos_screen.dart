import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jq7b/U2/Practica2/screens/drawer_widget_nav.dart';

class ContactosScreen extends StatefulWidget {
  const ContactosScreen({super.key});

  @override
  State<ContactosScreen> createState() => _ContactosScreenState();
}

class _ContactosScreenState extends State<ContactosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contactos'),
      ),
      drawer: DrawerWidgetNav(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lightbulb_outline, size: 100),
            Icon(Icons.lightbulb_outline, size: 100),
            Icon(Icons.lightbulb, size: 100),
            Text("Puerta cerrada"),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/tema");
              },
              child: const Text('Ir al tema'),
            ),
          ],
        ),
      ),
    );
  }
}
