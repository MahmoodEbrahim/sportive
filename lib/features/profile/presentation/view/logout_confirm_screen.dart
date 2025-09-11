import 'package:flutter/material.dart';

class LogoutConfirmScreen extends StatelessWidget {
  const LogoutConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Logout')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: sw * 0.06),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Are you sure you want to logout?', style: TextStyle(fontSize: sw * 0.045)),
            SizedBox(height: sh * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: sw * 0.35,
                  height: sh * 0.055,
                  child: OutlinedButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
                ),
                SizedBox(
                  width: sw * 0.35,
                  height: sh * 0.055,
                  child: ElevatedButton(onPressed: () {
                    // TODO: logout logic
                    Navigator.popUntil(context, (route) => route.isFirst);
                  }, child: const Text('Logout')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
