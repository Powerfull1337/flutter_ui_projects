import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/widgets/custom_info_button.dart';

class CustomInfoContainer extends StatelessWidget {
  const CustomInfoContainer(
      {super.key,
      required this.color,
      required this.text,
      required this.secondaryText,
      required this.icon,
      required this.buttonText,
      required this.backgaundButtonColor});

  final Color color;
  final String text;
  final String secondaryText;
  final String buttonText;
  final IconData icon;
  final Color backgaundButtonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    secondaryText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomInfoButton(
            buttonText: buttonText,
            backgroundButtonColor: backgaundButtonColor,
          ),
        ],
      ),
    );
  }
}
