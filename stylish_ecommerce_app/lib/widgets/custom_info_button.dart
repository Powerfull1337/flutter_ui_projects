import 'package:flutter/material.dart';

class CustomInfoButton extends StatelessWidget {
  const CustomInfoButton(
      {super.key,
      required this.backgroundButtonColor,
      required this.buttonText});

  final Color backgroundButtonColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundButtonColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.white, width: 2),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
