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
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Icon(icon, color: Colors.grey.withOpacity(0.5)),
            title: title,
            trailing: isTrailing ? Icon(Icons.arrow_forward_ios) : null,
            onTap: onTap,
          ),
          Divider()
        ],
      ),
    );
  }
}
