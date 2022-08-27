import 'package:flutter/material.dart';
import 'package:onboarding_screen_ui/pages/homepage.dart';
import 'package:onboarding_screen_ui/routes/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RouteManager.myHomePage,
      onGenerateRoute: RouteManager.generateRoute,
      home: MyHomePage(),
    );
  }
}
