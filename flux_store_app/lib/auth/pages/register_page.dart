import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/pages/login_page.dart';
import 'package:flux_store_app/auth/widgets/custmo_button.dart';
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
            Text(
              "Create ",
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
            SizedBox(height: 35),
            AuthField(hintText: "Enter your name"),
            SizedBox(height: 15),
            AuthField(hintText: "Email address"),
            SizedBox(height: 15),
            AuthField(hintText: "Password"),
            SizedBox(height: 15),
            AuthField(hintText: "Confirm password"),
            SizedBox(height: 55),
            Align(
                alignment: Alignment.center,
                child: CustomButton(text: "SIGN UP")),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
              child: Text(
                "or sign up with",
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
                  "Already have account?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
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
