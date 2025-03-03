import 'package:flutter/material.dart';

class ContadorProvider extends ChangeNotifier {
  int _contador = 0;
  int get contador => _contador;

  void incrementar() {
    _contador++;
    notifyListeners();
  }

  void decrementar() {
    _contador--;
    notifyListeners();
  }
}

class ColorProvider extends ChangeNotifier {
  bool _esOscuro = false;
  bool get esOscuro => _esOscuro;

  void cambiarColor() {
    _esOscuro = !_esOscuro;
    notifyListeners();
  }
}



class BackgroundColorProvider extends ChangeNotifier {
  Color _backgroundColor = Colors.white;
  Color get backgroundColor => _backgroundColor;

  void lightMode() {
    _backgroundColor = Colors.white;
    notifyListeners();
  }

  void darkMode() {
    _backgroundColor = Colors.black;
    notifyListeners();
  }

  void toggleMode() {
    _backgroundColor = _backgroundColor == Colors.white ? Colors.black : Colors.white;
    notifyListeners();
  }
}

