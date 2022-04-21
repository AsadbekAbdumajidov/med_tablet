import 'package:flutter/material.dart';
import 'package:medic/screens/login_page/login_page.dart';
import 'package:medic/screens/sign_in/sign_in.dart';
import 'package:medic/screens/sign_up/sign_up.dart';
import 'package:medic/screens/splash_page/next_splash.dart';
import 'package:medic/screens/splash_page/splash_page.dart';
import 'package:medic/screens/verify_page/verify_page.dart';

class RouteGenerate {
  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreenPage(),
        );
      case '/next_splash':
        return MaterialPageRoute(
          builder: (context) => const NextSplash(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case '/in':
        return MaterialPageRoute(
          builder: (context) => const SignIn(),
        );
      case '/up':
        return MaterialPageRoute(
          builder: (context) => const SignUp(),
        );
      case '/verify':
        return MaterialPageRoute(
          builder: (context) => LoginVerifyPage(),
        );
    }
    return null;
  }
}
