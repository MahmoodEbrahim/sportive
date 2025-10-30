import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sw * 0.06, vertical: sh * 0.02),
        child: Column(
          children: [
            CircleAvatar(
              radius: sw * 0.12,
              backgroundImage: const AssetImage('assets/images/profile_placeholder.png'),
            ),
            SizedBox(height: sh * 0.02),
            Text(
              'Ahmed Khaled',
              style: TextStyle(fontSize: sw * 0.06, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: sh * 0.02),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Personal Info'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.personal),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.setting),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.about),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.logoutConfirm),
            ),
          ],
        ),
      ),
    );
  }
}
