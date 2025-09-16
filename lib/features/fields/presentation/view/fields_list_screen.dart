import 'package:flutter/material.dart';
import 'package:sportive/config/route.dart';
import '../widgets/field_card.dart';

class FieldsListScreen extends StatelessWidget {
  const FieldsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text("Fields"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.teal,
          fontWeight: FontWeight.bold,
          fontSize: 24
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list,color: Colors.teal,),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.filter);
            },
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: ListView(
        children: [
          FieldCard(
            imageUrl:
            "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg",
            title: "New City Stadium",
            location: "Cairo, Egypt",
            price: "EGP 250/hr",
            ballprice: "25 EGP",
            deposit: "50 EGP",
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.fieldDetails);
            },
          ),
          FieldCard(
            imageUrl:
            "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg",
            title: "Sport City Field",
            location: "Giza, Egypt",
            price: "EGP 300/hr",
            ballprice: "25 EGP",
            deposit: "50 EGP",
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.fieldDetails);
            },
          ),
        ],
      ),
    );
  }
}
