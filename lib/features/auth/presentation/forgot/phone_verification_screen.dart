import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    final screenW = MediaQuery.of(context).size.width;
    final codeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Verify Code')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenW * 0.06, vertical: screenH * 0.03),
        child: Column(
          children: [
            Text('We sent a code to your phone/email', style: TextStyle(fontSize: screenW * 0.045)),
            SizedBox(height: screenH * 0.03),
            TextField(
              controller: codeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter code', border: OutlineInputBorder()),
            ),
            SizedBox(height: screenH * 0.03),
            SizedBox(
              width: double.infinity,
              height: screenH * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.setNewPassword);
                },
                child: const Text('Verify'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
