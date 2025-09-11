import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sw * 0.06),
        child: ListView(
          children: [
            SwitchListTile(
              title: const Text('Push Notifications'),
              value: true,
              onChanged: (v) {},
            ),
            ListTile(
              title: const Text('Terms & Conditions'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.terms),
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.contact),
            ),
            ListTile(
              title: const Text('About'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.about),
            ),
          ],
        ),
      ),
    );
  }
}
