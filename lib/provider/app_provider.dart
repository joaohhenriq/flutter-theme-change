import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {

  bool isDarkModeOn = false;

  void updateTheme(bool isDartModeOn){
    this.isDarkModeOn = isDartModeOn;
    notifyListeners();
  }
}