import 'package:flutter/material.dart';
import 'package:mygoals/app/config/themes/primary_theme.dart';
import 'package:mygoals/app/ui/pages/login_page.dart';
import 'config/routes/router.dart';
import 'config/routes/routes.dart';

class MyGoalApp extends StatelessWidget {
  const MyGoalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My goals',
      debugShowCheckedModeBanner: false,
      routes: CustomRouter.routes,
      theme: primaryTheme,
      onUnknownRoute: CustomRouter.onGenerateUnknowedRoute,
      initialRoute: Routes.login,
      home: const LoginPage(),
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
