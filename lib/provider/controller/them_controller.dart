import 'package:flutter/material.dart';

class ThemController with ChangeNotifier{
 var _themeMode =  ThemeMode.light;
   ThemeMode get   themeMode => _themeMode;
   setTheme(ThemeMode){
     _themeMode = ThemeMode;
     notifyListeners();
   }
}