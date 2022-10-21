import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
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

  RxInt currentIndex = 0.obs;
  RxString title = 'Home'.obs;

  void setTitle(int value) {
    title.value = items[value].label!;
    currentIndex.value = value;
  }
}
