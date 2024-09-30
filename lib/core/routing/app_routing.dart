


import 'package:flutter/material.dart';
import 'package:mentor_academy/core/constants/const.dart';
import 'package:mentor_academy/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());

      case homeView:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
    return null;
  }
}
