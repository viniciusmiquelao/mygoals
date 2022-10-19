import 'package:flutter/material.dart';

class CustomRouter {
  static Map<String, WidgetBuilder> routes = {};

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
