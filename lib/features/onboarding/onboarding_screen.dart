import 'package:flutter/material.dart';

import '../../config/route.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.login);
          },
          child: const Text("Go to Login"),
        ),
      ),
    );
  }
}
