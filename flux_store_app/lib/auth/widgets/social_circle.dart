import 'package:flutter/material.dart';

class SocialCircle extends StatelessWidget {
  const SocialCircle({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    const double heightWidht = 50;

    return Container(
      padding: const EdgeInsets.all(10),
      height: heightWidht,
      width: heightWidht,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.4),
          )),
      child: Image.asset(imagePath),
    );
  }
}
