import 'package:flutter/material.dart';
import '../widgets/schedule_item.dart';

class MyFieldsScreen extends StatelessWidget {
  const MyFieldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final times = [
      {"time": "12 PM", "status": "Booked"},
      {"time": "1 PM", "status": "Pending"},
      {"time": "2 PM", "status": "Pending"},
      {"time": "3 PM", "status": "Booked"},
      {"time": "4 PM", "status": "Available"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Fields & Clubs"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: times.length,
        itemBuilder: (context, index) {
          return ScheduleItem(
            time: times[index]["time"]!,
            status: times[index]["status"]!,
          );
        },
      ),
    );
  }
}
