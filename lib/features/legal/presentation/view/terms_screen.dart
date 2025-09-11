import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text('Terms & Conditions')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sw * 0.06, vertical: 16),
        child: const SingleChildScrollView(
          child: Text(
            'Long terms and conditions content goes here. \n\n1. Terms...\n2. Usage...\n3. Privacy...',
          ),
        ),
      ),
    );
  }
}
