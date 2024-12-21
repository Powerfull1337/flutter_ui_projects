import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';

class CustomSocialCircle extends StatelessWidget {
  const CustomSocialCircle({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColor.primaryColor,
          width: 1,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Color(0xFFFCF3F6),
        radius: 30,
        child: Image.asset(
          imagePath,
        ),
      ),
    );
  }
}
