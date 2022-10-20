import 'package:flutter/material.dart';

class BaseBody extends StatelessWidget {
  const BaseBody({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
          colors: [
            Color(0xff314560),
            Color(0xff0b1f42),
          ],
        ),
      ),
      child: child,
    );
  }
}
