import 'package:flutter/material.dart';

class SwitchLangugae extends ChangeNotifier {
  Locale _appLocal = const Locale('en');
  String _appFontFamily = 'Roboto';

  Locale get appLocal => _appLocal;
  String get appFontFamily => _appFontFamily; 

  void switchLang(Locale language) {
    if (language ==  const Locale('en')) {
      _appLocal = const Locale("ar");
      _appFontFamily = 'Effra Arbc';
    } else {
      _appLocal = const Locale("en");
      _appFontFamily = 'Roboto';
    }
    notifyListeners();
  }
}