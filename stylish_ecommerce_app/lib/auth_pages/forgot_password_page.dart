import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';
import 'package:stylish_ecommerce_app/widgets/custom_button.dart';
import 'package:stylish_ecommerce_app/widgets/custom_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Forgot Password?",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            const CustomField(
              prefixIcon: Icons.email_outlined,
              hintText: "Enter your email address",
            ),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.left,
              text: const TextSpan(
                text: "* ",
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text:
                        "We will send you a message to set or reset your new password",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomButton(onTap: () {}, text: "Submit"),
          ],
        ),
      ),
    );
  }
}
