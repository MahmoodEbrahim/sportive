import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int selectedSlot = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Booking")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Select Time Slot:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: List.generate(5, (index) {
                final isSelected = selectedSlot == index;
                return ChoiceChip(
                  label: Text("Slot ${index + 1}"),
                  selected: isSelected,
                  onSelected: (_) {
                    setState(() => selectedSlot = index);
                  },
                );
              }),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.confirmBooking);
              },
              child: const Text("Proceed"),
            )
          ],
        ),
      ),
    );
  }
}
