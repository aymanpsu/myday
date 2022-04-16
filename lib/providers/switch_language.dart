import 'package:flutter/material.dart';

class SwitchLangugae extends ChangeNotifier {
  Locale _appLocal = Locale('en');
  String _appFontFamily = 'Roboto';

  Locale get appLocal => _appLocal;
  String get appFontFamily => _appFontFamily; 

  void switchLang(Locale language) {
    if (language ==  Locale('en')) {
      _appLocal = Locale("ar");
      _appFontFamily = 'Effra Arbc';
    } else {
      _appLocal = Locale("en");
      _appFontFamily = 'Roboto';
    }
    notifyListeners();
  }
}