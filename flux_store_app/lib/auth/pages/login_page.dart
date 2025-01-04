import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/pages/forgot_password_page.dart';
import 'package:flux_store_app/auth/pages/register_page.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';
import 'package:flux_store_app/auth/widgets/auth_field.dart';
import 'package:flux_store_app/auth/widgets/social_circle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              "Log into",
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
            const SizedBox(height: 75),
            const AuthField(hintText: "Email address"),
            const SizedBox(height: 15),
            const AuthField(hintText: "Password"),
            const SizedBox(height: 45),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordPage()));
                },
                child: const Text("Forgot Password?"),
              ),
            ),
            const SizedBox(height: 55),
            const Align(
                alignment: Alignment.center,
                child: CustomButton(text: "LOG IN")),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "or log in with",
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
                  "Don`t have an account?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  child: const Text(
                    "Sign Up",
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
