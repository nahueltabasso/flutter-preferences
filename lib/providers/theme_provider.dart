import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeData currentTheme;

  ThemeProvider({required bool isDarkmode}): currentTheme = isDarkmode ? ThemeData.dark() : ThemeData.light();
  
  setLightMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }


}