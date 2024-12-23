import 'package:flutter/material.dart';

class ExpandedIconButton extends StatelessWidget {
  const ExpandedIconButton(
      {super.key, required this.icon, required this.text, this.onTap});

  final IconData icon;
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(icon), const SizedBox(width: 5), Text(text)],
          ),
        ),
      ),
    );
  }
}
