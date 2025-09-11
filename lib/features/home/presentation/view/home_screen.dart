import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(child: Text('Home content placeholder', style: TextStyle(fontSize: sw * 0.05))),
    );
  }
}
