import 'package:flutter/material.dart';
import 'package:mbooking_app/app_color.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.color = AppColor.primaryOrangeColor,
    this.colorText = Colors.black,
    this.isBorder = false,
    required this.text,
    this.onTap,
    BorderRadiusGeometry? borderRadius,
  }) : borderRadius = borderRadius ?? BorderRadius.circular(64);

  final String text;
  final Color color;
  final Color colorText;
  final bool isBorder;
  final BorderRadiusGeometry borderRadius;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: color,
          border: isBorder ? Border.all(color: Colors.white) : null,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, color: colorText, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
