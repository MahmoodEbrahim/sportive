import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text('Personal Info')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sw * 0.06, vertical: sh * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Phone', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('+20 1X XXX XXXX'),
            SizedBox(height: sh * 0.02),
            Text('Location', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Cairo, Egypt'),
            SizedBox(height: sh * 0.02),
            Text('Preferences', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Notifications: Enabled'),
          ],
        ),
      ),
    );
  }
}
