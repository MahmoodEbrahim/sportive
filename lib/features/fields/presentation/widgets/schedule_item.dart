import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  final String time;
  final String status;

  const ScheduleItem({
    super.key,
    required this.time,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Color bgColor;
    switch (status) {
      case "Booked":
        bgColor = Colors.red;
        break;
      case "Pending":
        bgColor = Colors.yellow;
        break;
      default:
        bgColor = Colors.white;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(time, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(status),
        ],
      ),
    );
  }
}
