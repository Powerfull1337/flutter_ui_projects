import 'package:flutter/material.dart';

class SortFilterItem extends StatelessWidget {
  const SortFilterItem({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(text), Icon(icon)],
      ),
    );
  }
}
