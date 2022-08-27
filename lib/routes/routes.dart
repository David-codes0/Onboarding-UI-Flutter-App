import 'package:flutter/material.dart';
import 'package:onboarding_screen_ui/pages/homepage.dart';
import 'package:onboarding_screen_ui/pages/thank_youpage.dart';

class RouteManager {
  static const String myHomePage = '/';
  static const String thankyouPage = '/thankyouPage';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case myHomePage:
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );

      case thankyouPage:
        return MaterialPageRoute(
          builder: (context) => const LottieAni(),
        );


      default:
        throw const FormatException('Route not found! Check routes again!');
    }
  }
}
