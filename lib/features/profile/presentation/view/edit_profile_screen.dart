import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;

    final name = TextEditingController();
    final email = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sw * 0.06, vertical: sh * 0.02),
        child: Column(
          children: [
            TextField(controller: name, decoration: const InputDecoration(labelText: 'Full Name')),
            SizedBox(height: sh * 0.02),
            TextField(controller: email, decoration: const InputDecoration(labelText: 'Email')),
            SizedBox(height: sh * 0.04),
            SizedBox(
              width: double.infinity,
              height: sh * 0.06,
              child: ElevatedButton(onPressed: () {}, child: const Text('Save Changes')),
            )
          ],
        ),
      ),
    );
  }
}
