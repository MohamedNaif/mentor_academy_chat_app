


import 'package:flutter/material.dart';
import 'package:mentor_academy/core/constants/const.dart';
import 'package:mentor_academy/features/auth/presentation/views/login_view.dart';
import 'package:mentor_academy/features/auth/presentation/views/signup_view.dart';
import 'package:mentor_academy/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case signUpView:
        return MaterialPageRoute(builder: (_) => const SignupView());

      case homeView:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
    return null;
  }
}
