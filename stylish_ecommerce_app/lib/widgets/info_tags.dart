import 'package:flutter/material.dart';

class InfoTags extends StatelessWidget {
  const InfoTags({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
