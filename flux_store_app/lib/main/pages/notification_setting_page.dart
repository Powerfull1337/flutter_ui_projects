import 'package:flutter/material.dart';
import 'package:flux_store_app/main/widgets/switch_container.dart';

class NotificationSettingPage extends StatelessWidget {
  const NotificationSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        centerTitle: true,
        title: const Text("Settings"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 31, vertical: 5),
        child: Column(
          children: [
            SwitchContainer(
                title: "Show notifications",
                description: "Receive push notifications for new messages"),
            SizedBox(height: 37),
            SwitchContainer(
                title: "Notification sounds",
                description: "Play sound for new messages"),
            SizedBox(height: 37),
            SwitchContainer(
              title: "Lock screen notifications",
              description: "Allow notification on the lock screen",
              switchValue: false,
            ),
          ],
        ),
      ),
    );
  }
}
