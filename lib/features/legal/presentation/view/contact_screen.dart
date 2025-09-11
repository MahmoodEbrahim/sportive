import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;

    final name = TextEditingController();
    final email = TextEditingController();
    final message = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sw * 0.06),
        child: Column(
          children: [
            SizedBox(height: sh * 0.02),
            TextField(controller: name, decoration: const InputDecoration(labelText: 'Name')),
            SizedBox(height: sh * 0.015),
            TextField(controller: email, decoration: const InputDecoration(labelText: 'Email')),
            SizedBox(height: sh * 0.015),
            TextField(controller: message, decoration: const InputDecoration(labelText: 'Message'), maxLines: 4),
            SizedBox(height: sh * 0.02),
            SizedBox(
              width: double.infinity,
              height: sh * 0.06,
              child: ElevatedButton(onPressed: () {}, child: const Text('Send')),
            )
          ],
        ),
      ),
    );
  }
}
