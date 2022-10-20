import 'package:flutter/material.dart';
import 'package:mygoals/app/routes/routes.dart';
import 'package:mygoals/app/ui/pages/home_page.dart';
import 'package:mygoals/app/ui/pages/login_page.dart';

class CustomRouter {
  static Map<String, WidgetBuilder> routes = {
    Routes.login: (_) => const LoginPage(),
    Routes.home: (_) => const HomePage(),
  };

  static Route<dynamic> onGenerateUnknowedRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        body: Center(
          child: Text('Nenhuma rota definida para ${settings.name}'),
        ),
      );
    });
  }
}
