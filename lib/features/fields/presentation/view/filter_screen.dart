import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filters")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              items: ["Cairo", "Giza", "Alexandria"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) {},
              decoration: const InputDecoration(labelText: "City"),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              items: ["5-a-side", "7-a-side", "11-a-side"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) {},
              decoration: const InputDecoration(labelText: "Field Type"),
            ),
            const SizedBox(height: 16),
            RangeSlider(
              values: const RangeValues(100, 500),
              min: 50,
              max: 1000,
              divisions: 10,
              onChanged: (v) {},
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Apply Filters"),
            )
          ],
        ),
      ),
    );
  }
}
