import 'package:flutter/material.dart';

class CategoriesAppbar extends StatelessWidget {
  const CategoriesAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 120),
      child: const Text(
        "Categories",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
