import 'package:flutter/material.dart';

class HomeController {
  final List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(
        Icons.home,
      ),
    ),
    BottomNavigationBarItem(
      label: 'Explore',
      icon: Icon(
        Icons.explore,
      ),
    ),
    BottomNavigationBarItem(
      label: 'Goals',
      icon: Icon(
        Icons.star,
      ),
    ),
    BottomNavigationBarItem(
      label: 'Profile',
      icon: Icon(
        Icons.person,
      ),
    ),
  ];

  int currentIndex = 0;
  String title = 'Home';

  void setTitle(int value) {
    title = items[value].label!;
    currentIndex = value;
  }
}
