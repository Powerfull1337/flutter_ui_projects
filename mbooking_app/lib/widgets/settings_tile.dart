import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile(
      {super.key,
      required this.title,
      required this.icon,
      this.isArrowForward = true,
      this.trailingWidget});

  final String title;
  final IconData icon;
  final bool isArrowForward;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              title,
              style: const TextStyle(color: Color(0xFFF2F2F2)),
            ),
            leading: Icon(icon, color: const Color(0xFFF2F2F2)),
            trailing: isArrowForward
                ? const Icon(Icons.arrow_forward_ios, color: Color(0xFFF2F2F2))
                : trailingWidget,
          ),
          const Divider(
            color: Color(0xFF4A4A4A),
            height: 10,
          ),
        ],
      ),
    );
  }
}
