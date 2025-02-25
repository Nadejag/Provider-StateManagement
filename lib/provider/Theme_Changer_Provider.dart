import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier{

var _thememode=ThemeMode.light;
ThemeMode get themMode=> _thememode;

void setTheme(themeMode){

  _thememode=themeMode;
  notifyListeners();

}
}