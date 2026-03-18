import 'package:flutter/material.dart';

class OnboardingController with ChangeNotifier {
  final _pageController = PageController();
  PageController get pageController => _pageController;

  int _currentPageIndex = 0;
  int get currentPageIndex => _currentPageIndex;

  void updatePageIndicator(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  void backPage() {
    if (_currentPageIndex != 0) {
      _currentPageIndex--;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      notifyListeners();
    }
  }

  void nextPage() {
    if (_currentPageIndex == 2) {
      // save to local storage isFirstTime = false
      // go to login screen
    } else {
      _currentPageIndex++;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      notifyListeners();
    }
  }

  void skipPage() {
    _currentPageIndex = 2;
    _pageController.animateToPage(
      _currentPageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    notifyListeners();
  }
}
