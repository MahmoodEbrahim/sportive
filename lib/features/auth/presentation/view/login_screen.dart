import 'package:flutter/material.dart';

import '../../../../config/route.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.signup);
          },
          child: const Text("Go to Signup"),
        ),
      ),
    );
  }
}
