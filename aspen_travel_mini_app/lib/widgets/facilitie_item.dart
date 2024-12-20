import 'package:aspen_travel_mini_app/colors.dart';
import 'package:flutter/material.dart';

class FacilitieItem extends StatelessWidget {
  const FacilitieItem({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.blue.withOpacity(0.1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.grey,
            size: 28,
          ),
          Text(text, style: const TextStyle(color: Colors.grey))
        ],
      ),
    );
  }
}
