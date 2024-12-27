import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/auth_button.dart';
import 'package:flux_store_app/main/pages/main_page.dart';

class SuccessModal extends StatelessWidget {
  const SuccessModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
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
          SizedBox(height: 40),
          Text(
            "Your password has been changed",
            style: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 20),
          Text(
            "Welcome back! Discover now!",
            style: TextStyle(
                fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 30),
          AuthButton(
            text: "Browse home",
            width: double.infinity,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            },
          )
        ],
      ),
    );
  }
}
