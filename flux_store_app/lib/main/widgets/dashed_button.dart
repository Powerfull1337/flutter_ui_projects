import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class DashedButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  DashedButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          border: DashedBorder.fromBorderSide(
            dashLength: 10,
            side: BorderSide(color: Colors.grey, width: 1),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Icon(icon, size: 36, color: Colors.grey),
        ),
      ),
    );
  }
}