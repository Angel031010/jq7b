import 'package:flutter/material.dart';
import 'package:jq7b/U2/Practica1/provider/contador_provider.dart';
import 'package:provider/provider.dart';

class FocoWidget extends StatefulWidget {
  const FocoWidget({super.key});

  @override
  State<FocoWidget> createState() => _FocoWidgetState();
}

class _FocoWidgetState extends State<FocoWidget> {
  int cont = 0;
  Color containerColor = Colors.grey;

  void toggleColor() {
    setState(() {
      if (cont < 11) {
        containerColor =
            containerColor == Colors.yellow ? Colors.grey : Colors.yellow;
      } else {
        containerColor = Colors.black;
      }
    });
  }

  void incrementCounter() {
    if (cont < 11) {
      setState(() {
        cont++;
        toggleColor();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: toggleColor,
              child: Container(
                width: 150,
                height: 150,
                color: containerColor,
                child: Center(
                  child: Text(
                    context.watch<ContadorProvider>().contador.toString(),
                    style: TextStyle(fontSize: 50, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
             IconButton(
            onPressed: (){
              context.read<ContadorProvider>().incrementar();
            },
            icon: Icon(Icons.add),
          ),
          ],
        ),
        
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: cont < 11 ? incrementCounter : null,
      //   child: Icon(Icons.add),
      // ),
    );
  }
}