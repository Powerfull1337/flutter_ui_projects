import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchContainer extends StatelessWidget {
  const SwitchContainer({
    super.key,
    required this.title,
    required this.description,
    this.onChanged,
    this.switchValue = true,
  });

  final String title;
  final String description;
  final bool switchValue;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        CupertinoSwitch(
          activeColor: const Color(0xFF508A7B),
          value: switchValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
