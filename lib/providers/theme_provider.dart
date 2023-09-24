import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkTheme = false;

  Color bgColor = Colors.grey;

  void changeTheme() {
    isDarkTheme = !isDarkTheme;
    bgColor = isDarkTheme ? Colors.black : Colors.grey;
    notifyListeners();
  }
}