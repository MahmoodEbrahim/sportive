import 'package:flutter/material.dart';
import 'package:sportive/features/fields/data/model/field_model.dart';
import '../widgets/field_card.dart';

class FieldsScreen extends StatelessWidget {
  FieldsScreen({super.key});

  final List<FieldModel> fields = [
    FieldModel(
      name: "Nasr City Stadium",
      location: "123 street, Nasr City",
      price: "EGP 300/hr",
      image: "assets/field1.jpg",
      features: ["No Deposit", "5v5"],
    ),
    FieldModel(
      name: "Maadi Stadium",
      location: "Maadi, Cairo",
      price: "EGP 350/hr",
      image: "assets/field2.jpg",
      features: ["7v7", "Indoor"],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fields")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: fields.length,
          itemBuilder: (ctx, i) => FieldCard(
            field: fields[i],
            onBook: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Booking ${fields[i].name}...")),
              );
            },
          ),
        ),
      ),
    );
  }
}
