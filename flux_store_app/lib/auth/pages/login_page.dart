import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/pages/forgot_password_page.dart';
import 'package:flux_store_app/auth/pages/register_page.dart';
import 'package:flux_store_app/auth/widgets/auth_button.dart';
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
            Text(
              "Log into",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              "your account",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 75),
            AuthField(hintText: "Email address"),
            SizedBox(height: 15),
            AuthField(hintText: "Password"),
            SizedBox(height: 45),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage()));
                },
                child: Text("Forgot Password?"),
              ),
            ),
            SizedBox(height: 55),
            Align(
                alignment: Alignment.center, child: AuthButton(text: "LOG IN")),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
              child: Text(
                "or log in with",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 25),
            Row(
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
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don`t have an account?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
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
