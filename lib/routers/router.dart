import 'package:flutter/material.dart';
import 'package:medic/screens/splash_page/splash_page.dart';
class RouteGenerate {
  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreenPage(),
        );
      
    }
    return null;
  }
}
