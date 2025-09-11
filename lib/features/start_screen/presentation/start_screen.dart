import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sw * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo1.png', width: sw * 0.4),
            SizedBox(height: sh * 0.04),
            Text('Welcome to Sportive', style: TextStyle(fontSize: sw * 0.06, fontWeight: FontWeight.bold)),
            SizedBox(height: sh * 0.02),
            SizedBox(
              width: double.infinity,
              height: sh * 0.06,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.login),
                child: const Text('I already have an account'),
              ),
            ),
            SizedBox(height: sh * 0.015),
            SizedBox(
              width: double.infinity,
              height: sh * 0.06,
              child: OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.signup),
                child: const Text('Create an account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
