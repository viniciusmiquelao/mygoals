import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygoals/app/ui/pages/home_controller.dart';

import '../../dependences_injector/dependeces_injector.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late HomeController _homeController;

  @override
  void initState() {
    _homeController = DependencesInjector.get<HomeController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        child: Obx(
          () => BottomNavigationBar(
            iconSize: 30,
            currentIndex: _homeController.currentIndex.value,
            selectedFontSize: 14,
            type: BottomNavigationBarType.fixed,
            unselectedFontSize: 14,
            onTap: (value) => _homeController.setTitle(value),
            showUnselectedLabels: true,
            items: _homeController.items,
          ),
        ),
      ),
    );
  }
}
