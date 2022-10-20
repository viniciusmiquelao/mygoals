import 'package:flutter/material.dart';
import 'package:mygoals/app/ui/pages/home_controller.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.homeController, this.onTap});

  final HomeController homeController;
  final Function(int)? onTap;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
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
        child: BottomNavigationBar(
          iconSize: 30,
          currentIndex: widget.homeController.currentIndex,
          selectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          onTap: widget.onTap,
          showUnselectedLabels: true,
          items: widget.homeController.items,
        ),
      ),
    );
  }
}
