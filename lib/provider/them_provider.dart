import 'package:counter_app/models/them_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeModel themeMode;
  ThemeProvider({required this.themeMode});
  @override
  void  changtheme() async{
    SharedPreferences pref =await SharedPreferences.getInstance();
    themeMode.isDark=!themeMode.isDark;
    pref.setBool("isthemdark",themeMode.isDark);
    notifyListeners() ;

  }
}