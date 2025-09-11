import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';

class SetNewPasswordScreen extends StatelessWidget {
  const SetNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    final screenW = MediaQuery.of(context).size.width;
    final passController = TextEditingController();
    final confirmController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Set New Password')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenW * 0.06, vertical: screenH * 0.03),
        child: Column(
          children: [
            Text('Choose a strong password', style: TextStyle(fontSize: screenW * 0.045)),
            SizedBox(height: screenH * 0.02),
            TextField(
              controller: passController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'New Password', border: OutlineInputBorder()),
            ),
            SizedBox(height: screenH * 0.02),
            TextField(
              controller: confirmController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Confirm Password', border: OutlineInputBorder()),
            ),
            SizedBox(height: screenH * 0.03),
            SizedBox(
              width: double.infinity,
              height: screenH * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.passwordSuccess);
                },
                child: const Text('Save Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
