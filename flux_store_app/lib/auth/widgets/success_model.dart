import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';
import 'package:flux_store_app/main/pages/main_page.dart';

class SuccessModal extends StatelessWidget {
  const SuccessModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: Image.asset('assets/images/auth/success.png')),
          const SizedBox(height: 40),
          const Text(
            "Your password has been changed",
            style: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 20),
          const Text(
            "Welcome back! Discover now!",
            style: TextStyle(
                fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 30),
          CustomButton(
            text: "Browse home",
            width: double.infinity,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const MainPage()));
            },
          )
        ],
      ),
    );
  }
}
