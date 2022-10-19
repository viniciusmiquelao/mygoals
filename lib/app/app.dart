import 'package:flutter/material.dart';
import 'routes/router.dart';
import 'routes/routes.dart';

class MyGoalApp extends StatelessWidget {
  const MyGoalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My goals',
      debugShowCheckedModeBanner: false,
      routes: CustomRouter.routes,
      onUnknownRoute: CustomRouter.onGenerateUnknowedRoute,
      initialRoute: Routes.login,
      builder: (context, widget) {
        return ScrollConfiguration(
          behavior: const BouncingScrollBehavior(),
          child: widget!,
        );
      },
    );
  }
}

class BouncingScrollBehavior extends ScrollBehavior {
  const BouncingScrollBehavior();

  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const BouncingScrollPhysics();
  }
}
