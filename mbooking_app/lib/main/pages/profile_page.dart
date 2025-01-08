import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/widgets/settings_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _switchValue = true; // Початковий стан свічу

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const Stack(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/woman.jpg"),
                    ),
                    SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Angelina",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF2F2F2),
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Color(0xFFF2F2F2),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "(704) 555-0127",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFF2F2F2),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Color(0xFFF2F2F2),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "angelina@example.com",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFF2F2F2),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Icon(
                    Icons.edit,
                    color: Color(0xFFF2F2F2),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 64),
            const SettingsTile(
              title: "My Ticket",
              icon: Icons.airplane_ticket,
            ),
            const SettingsTile(
              title: "Payment History",
              icon: Icons.card_travel_sharp,
            ),
            const SettingsTile(
              title: "Change Language",
              icon: Icons.language,
            ),
            const SettingsTile(
              title: "Change Password",
              icon: Icons.lock,
            ),
            SettingsTile(
              title: "Face ID / Touch ID",
              icon: Icons.face,
              isArrowForward: false,
              trailingWidget: CupertinoSwitch(
                trackColor: const Color(0xFF2E2E2E),
                activeColor: AppColor.primaryOrangeColor,
                value: _switchValue,
                onChanged: (bool value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
