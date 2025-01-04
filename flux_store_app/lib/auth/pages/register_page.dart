import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/pages/login_page.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';
import 'package:flux_store_app/auth/widgets/auth_field.dart';
import 'package:flux_store_app/auth/widgets/social_circle.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create ",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              "your account",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 35),
            const AuthField(hintText: "Enter your name"),
            const SizedBox(height: 15),
            const AuthField(hintText: "Email address"),
            const SizedBox(height: 15),
            const AuthField(hintText: "Password"),
            const SizedBox(height: 15),
            const AuthField(hintText: "Confirm password"),
            const SizedBox(height: 55),
            const Align(
                alignment: Alignment.center,
                child: CustomButton(text: "SIGN UP")),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "or sign up with",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCircle(
                  imagePath: 'assets/images/auth/apple.png',
                ),
                SizedBox(width: 10),
                SocialCircle(
                  imagePath: 'assets/images/auth/google.png',
                ),
                SizedBox(width: 10),
                SocialCircle(
                  imagePath: 'assets/images/auth/facebook.png',
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have account?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
