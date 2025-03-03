import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemaScreen extends StatefulWidget {
  const TemaScreen({super.key});

  @override
  State<TemaScreen> createState() => _TemaScreenState();
}

class _TemaScreenState extends State<TemaScreen> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TEMA'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoSwitch(
            value: isDarkMode,
            onChanged: (value) {
              setState(() {
                isDarkMode = value;
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
            child: Text(isDarkMode ? 'Modo Claro' : 'Modo Oscuro'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            child: const Text('Ir al Contactos'),
          )
        ],
      ),
    );
  }
}
