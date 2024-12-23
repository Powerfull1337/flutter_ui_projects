import 'package:flutter/material.dart';

class DetailPageButton extends StatelessWidget {
  const DetailPageButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.topColor,
      required this.bottomColor});

  final String text;
  final IconData icon;
  final Color topColor;
  final Color bottomColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [topColor, bottomColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: -40,
            bottom: -7,
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [topColor, bottomColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 34,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
