import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/navigation/navigation_utility.dart';
import 'package:todo_app/routes/route_names.dart';

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
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      notifyListeners();
    }
  }

  void nextPage(BuildContext context) {
    if (_currentPageIndex == 2) {
      // save to local storage isFirstTime = false
      // go to login screen
      NavigationUtility.navigateTo(
        context: context,
        routeName: RouteNames.startScreen,
      );
    } else {
      _currentPageIndex++;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      notifyListeners();
    }
  }

  void skipPage() {
    _currentPageIndex = 2;
    _pageController.animateToPage(
      _currentPageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    notifyListeners();
  }
}
