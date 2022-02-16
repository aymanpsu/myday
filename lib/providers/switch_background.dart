import 'package:flutter/material.dart';

class SwitchBackground extends ChangeNotifier {
  Image _liveBackground = Image.asset("assets/background_1.jpeg");

  Image get liveBackground => _liveBackground;

  void switchBackground(int backgroundId) {
    _liveBackground = Image.asset("assets/background_$backgroundId.jpeg");
    notifyListeners();
  }
}