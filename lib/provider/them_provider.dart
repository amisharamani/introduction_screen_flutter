import 'package:counter_app/models/them_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeModel themeMode=ThemeModel(isDark:false);
  @override
  void  changtheme(){
    themeMode.isDark=!themeMode.isDark;
    notifyListeners() ;

  }
}