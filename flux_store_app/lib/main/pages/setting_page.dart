import 'package:flutter/material.dart';
import 'package:flux_store_app/main/pages/notification_setting_page.dart';
import 'package:flux_store_app/main/widgets/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {},
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                children: [
                  SettingsTile(
                      title: const Text("Language"),
                      icon: Icons.language,
                      onTap: () {}),
                  SettingsTile(
                    title: const Text("Notification"),
                    icon: Icons.notifications,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationSettingPage()));
                    },
                  ),
                  SettingsTile(
                    title: const Text("Trems of use"),
                    icon: Icons.rule,
                    onTap: () {},
                  ),
                  SettingsTile(
                    title: const Text("Privacy Policy"),
                    icon: Icons.privacy_tip,
                    onTap: () {},
                  ),
                  SettingsTile(
                    title: const Text("Chat support"),
                    icon: Icons.message,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
