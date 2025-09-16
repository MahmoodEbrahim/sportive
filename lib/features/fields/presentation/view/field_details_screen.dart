import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';

class FieldDetailsScreen extends StatelessWidget {
  const FieldDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                  child: Image.network(
                    "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg",
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "5v5",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
                Positioned(
                  top: 35,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Nasr City",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nasr City Stadium",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_circle_up_outlined,color: Colors.white,size: 26,)
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white, size: 18),
                      SizedBox(width: 6),
                      Text(
                        "123 korba st, Nasr City",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.sports_soccer, color: Colors.white, size: 18),
                      SizedBox(width: 6),
                      Text(
                        "Ball Price: 25 EGP",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          Row(
                            children: [
                              Icon(Icons.lock, color: Colors.white, size: 18),
                              SizedBox(width: 6),
                              Text(
                                "Deposit: 50 EGP",
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                      Text(
                        "EGP 300/hr",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),

                ],
              ),
            ),
            const Divider(height: 1, color: Colors.white),
            SizedBox(height: 10),

            // --- Tabs ---
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              color: Colors.teal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.white, size: 16),
                  SizedBox(width: 16),
                  Text(
                    "Today, Oct 26",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 18),
              child: Container(
                color: Colors.teal,
                child: Container(
                  padding: const EdgeInsets.all(2), // Reduced padding
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ChoiceChip(
                        label: const Text("Field 1", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.teal,
                        )),
                        selected: true,
                        selectedColor: Colors.white,
                        onSelected: (bool value) {},
                      ),
                      ChoiceChip(
                        label: const Text("Field 2"),
                        selected: false,
                        onSelected: (bool value) {},
                      ),
                      ChoiceChip(
                        label: const Text("Field 3"),
                        selected: false,
                        onSelected: (bool value) {},
                      ),
                       DropdownButton<String>(
                        items: <String>[].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: null,
                        hint: Text("Filter", style: TextStyle(color: Colors.teal)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

             Divider(height: 1, color: Colors.white),

            // --- Booking Slots ---
            Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  _timeSlot("8 AM", "Available", Colors.transparent, border: true),
                  const SizedBox(height: 8),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.confirmBooking);
                      },
                      child: _timeSlot("9 AM", "Booked", Colors.red)),
                  const SizedBox(height: 8),
                  _timeSlot("10 AM", "Pending", Colors.grey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _timeSlot(String time, String status, Color color, {bool border = false}) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: border ? Colors.transparent : color,
        border: border ? Border.all(color: Colors.white, style: BorderStyle.solid, width: 2) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              time,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              border ? "+" : status,
              style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
