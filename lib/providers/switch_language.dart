import 'package:flutter/material.dart';

class SwitchLangugae extends ChangeNotifier {
  Locale _appLocal = const Locale('en');

  Locale get appLocal => _appLocal;

  void switchLang(Locale language) {
    (language == const Locale('en'))
        ? _appLocal = const Locale("ar")
        : _appLocal = const Locale("en");
    notifyListeners();
  }
}