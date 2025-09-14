import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    String? selectedCity;
    String? selectedDistrict;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter Fields"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("City"),
            DropdownButtonFormField<String>(
              items: ["Cairo", "Alex"].map((e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              )).toList(),
              onChanged: (v) {},
            ),
            const SizedBox(height: 15),
            const Text("District"),
            DropdownButtonFormField<String>(
              items: ["Nasr City", "Maadi"].map((e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              )).toList(),
              onChanged: (v) {},
            ),
            const SizedBox(height: 15),
            const Text("Price Range"),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(hintText: "Min"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(hintText: "Max"),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Clear"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text("Apply Filters"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
