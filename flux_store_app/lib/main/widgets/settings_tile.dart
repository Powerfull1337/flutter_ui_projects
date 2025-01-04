import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile(
      {super.key,
      required this.icon,
      required this.title,
      this.isTrailing = true,
      required this.onTap});

  final IconData icon;
  final Widget title;
  final bool isTrailing;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: const Color(0xFF777E90)),
          title: title,
          trailing: isTrailing
              ? const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              : null,
          onTap: onTap,
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
        )
      ],
    );
  }
}
