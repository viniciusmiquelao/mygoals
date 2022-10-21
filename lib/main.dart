import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mygoals/app/app.dart';
import 'package:mygoals/app/dependences_injector/dependeces_injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  DependencesInjector.setup();
  runApp(const MyGoalApp());
}
