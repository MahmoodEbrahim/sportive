import 'package:flutter/material.dart';

class FieldDetailsScreen extends StatelessWidget {
  const FieldDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Nasr City Stadium"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/field1.png",
              height: size.height * 0.3, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Address: 123 Street, Nasr City"),
                const SizedBox(height: 10),
                const Text("Price: EGP 300/hr", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(double.infinity, size.height * 0.06),
                  ),
                  child: const Text("Book Now"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
