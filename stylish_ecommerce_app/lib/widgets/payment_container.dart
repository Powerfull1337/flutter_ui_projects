import 'package:flutter/material.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer(
      {super.key, required this.imagePath, required this.text});

  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imagePath),
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
