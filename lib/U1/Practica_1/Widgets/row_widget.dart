import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*Icon(
          Icons.umbrella_sharp,
          color: Colors.green,
          size: 60,
        ),
        Icon(
          Icons.phone_android,
          color: Colors.blue,
          size: 20,
        ),
        Icon(
          Icons.access_alarm,
          color: Colors.red,
          size: 60,
        ),
        Icon(
          Icons.addchart,
          color: Colors.pink,
          size: 80,
        ),
        Icon(
          Icons.line_style_rounded,
          color: Colors.purple,
          size: 60,
        ),*/
          FlutterLogo(
            size: 50,
          ),
          
        ],
      ),
    );
  }
}
