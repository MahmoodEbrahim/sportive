import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    final screenW = MediaQuery.of(context).size.width;

    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Reset Password')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenW * 0.06, vertical: screenH * 0.03),
        child: Column(
          children: [
            SizedBox(height: screenH * 0.02),
            Text('Enter your email to reset password', style: TextStyle(fontSize: screenW * 0.045)),
            SizedBox(height: screenH * 0.03),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: screenH * 0.03),
            SizedBox(
              width: double.infinity,
              height: screenH * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.phoneVerify);
                },
                child: const Text('Send Code'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
