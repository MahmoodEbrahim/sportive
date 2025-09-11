import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';

class PasswordSuccessScreen extends StatelessWidget {
  const PasswordSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    final screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenW * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle_outline, size: screenW * 0.25, color: Colors.green),
              SizedBox(height: screenH * 0.03),
              Text('Password Updated', style: TextStyle(fontSize: screenW * 0.06, fontWeight: FontWeight.bold)),
              SizedBox(height: screenH * 0.015),
              Text('You can now login with your new password', textAlign: TextAlign.center),
              SizedBox(height: screenH * 0.03),
              SizedBox(
                width: double.infinity,
                height: screenH * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.login);
                  },
                  child: const Text('Go to Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
