import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.textColor = Colors.white,
      this.isBorder = false,
      this.borderColor = Colors.grey,
      this.onTap,
      this.width = 150,
      this.color = const Color(0xFF2D201C)});

  final String text;
  final Function()? onTap;
  final bool isBorder;
  final Color? borderColor;
  final double? width;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 60,
        width: width,
        decoration: BoxDecoration(
            border: isBorder ? Border.all(color: borderColor!) : null,
            color: color,
            borderRadius: BorderRadius.circular(26.5)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
