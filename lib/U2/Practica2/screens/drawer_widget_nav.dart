import 'package:flutter/material.dart';

class DrawerWidgetNav extends StatefulWidget {
  const DrawerWidgetNav({super.key});

  @override
  State<DrawerWidgetNav> createState() => _DrawerWidgetNavState();
}

class _DrawerWidgetNavState extends State<DrawerWidgetNav> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, "/tema");
            },
            child: const Text('Ir al tema'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, "/drw");
            },
          ),
        ],
      ),
    );
  }
}