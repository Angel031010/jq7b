import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jq7b/U2/Practica1/provider/contador_provider.dart';
import 'package:provider/provider.dart';

class CupertinoSwitchScreen extends StatefulWidget {
  const CupertinoSwitchScreen({super.key});

  @override
  State createState() => _CupertinoSwitchScreenState();
}

class _CupertinoSwitchScreenState extends State {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of(context);

    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('CupertinoSwitch Sample')),
      child: Container(
        color: themeProvider.isBlack
            ? CupertinoColors.black
            : CupertinoColors.white,
        child: Center(
          child: CupertinoSwitch(
// This bool value toggles the switch.
            value: themeProvider.isBlack,
            activeTrackColor: CupertinoColors.activeBlue,
            onChanged: (bool? value) {
// This is called when the user toggles the switch.
              themeProvider.toggleBackgroundColor();
            },
          ),
        ),
      ),
    );
  }
}
