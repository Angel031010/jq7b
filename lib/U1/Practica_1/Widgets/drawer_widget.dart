import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Angel"),
          accountEmail: Text("angel@gmail.com"),
          decoration: BoxDecoration(
            gradient: SweepGradient(
                colors: [Colors.orange, Colors.indigo, Colors.white, Colors.teal],),
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.green,
            child: Text("AN"),
          ),
          otherAccountsPictures: [
            FlutterLogo(),
          ],
        ),
        ListTile(
          title: Text("Inicio"),
          leading: Icon(Icons.home),
        ),
        ListTile(
          title: Text("Agregar"),
          leading: Icon(Icons.add),
        ),
        Divider(),
        ListTile(
          title: Text("Buscar"),
          leading: Icon(Icons.search),
        ),
        ListTile(
          title: Text("Cerrar sesión"),
          leading: Icon(Icons.logout),
        )
      ],
    ));
  }
}
