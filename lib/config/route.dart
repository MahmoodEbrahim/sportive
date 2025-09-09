import 'package:flutter/material.dart';
import 'package:sportive/features/start_screen/presentation/start_screen.dart';

import '../../features/auth/presentation/view/login_screen.dart';
import '../../features/auth/presentation/view/signup_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String startscreen = '/startscreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case startscreen:
        return MaterialPageRoute(builder: (_) => const StartScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No route defined")),
          ),
        );
    }
  }
}
