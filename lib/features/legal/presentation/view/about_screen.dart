import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sw * 0.06, vertical: 16),
        child: const SingleChildScrollView(
          child: Text('Sportive v1.0\n\nThis app helps you book and manage sports fields.'),
        ),
      ),
    );
  }
}
