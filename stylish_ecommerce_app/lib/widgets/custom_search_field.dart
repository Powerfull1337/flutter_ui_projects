import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: "Search any Product",
        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey.withOpacity(0.7),
        ),
        suffixIcon: Icon(Icons.mic, color: Colors.grey.withOpacity(0.7)),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
      ),
    );
  }
}
