import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{

  int c=0;
  void incrementCounter(){
    c++;
    notifyListeners();
  }
}