import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int _selectedPageIndex = 0;

  int get currentIndex => _selectedPageIndex;

  void setPage(int newIndex) {
    _selectedPageIndex = newIndex;
    notifyListeners();
  }
}
