import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';
import 'package:flux_store_app/main/widgets/checkout_text_field.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text("Profile Setting"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 70,
                      backgroundImage:
                          AssetImage('assets/images/intro/welcome.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 1,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Color(0xFF353945), shape: BoxShape.circle),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CheckoutTextField(
                    labelText: "First Name",
                    isArsterisk: false,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  flex: 1,
                  child: CheckoutTextField(
                    labelText: "Last Name",
                    isArsterisk: false,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const CheckoutTextField(
              labelText: "Email",
              isArsterisk: false,
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CheckoutTextField(
                    labelText: "Gender",
                    isArsterisk: false,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  flex: 2,
                  child: CheckoutTextField(
                    labelText: "Phone",
                    isArsterisk: false,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 121,
            ),
            const CustomButton(text: "Save change")
          ],
        ),
      ),
    );
  }
}
