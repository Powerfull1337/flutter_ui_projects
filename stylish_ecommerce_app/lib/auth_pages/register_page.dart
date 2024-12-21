import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';
import 'package:stylish_ecommerce_app/auth_pages/login_page.dart';
import 'package:stylish_ecommerce_app/widgets/custom_button.dart';
import 'package:stylish_ecommerce_app/widgets/custom_field.dart';
import 'package:stylish_ecommerce_app/widgets/custom_social_circle.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              "Create an account!",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            const CustomField(
              prefixIcon: Icons.person,
              hintText: "Username or Email",
            ),
            const SizedBox(height: 20),
            const CustomField(
              prefixIcon: Icons.lock,
              hintText: "Password",
              sufixIcon: Icons.remove_red_eye_outlined,
            ),
            const SizedBox(height: 20),
            const CustomField(
              prefixIcon: Icons.lock,
              hintText: "Confirm Password",
              sufixIcon: Icons.remove_red_eye_outlined,
            ),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.left,
              text: const TextSpan(
                text: "By clicking the ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: "Register",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " button, you agree to the public offer.",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(onTap: () {}, text: "Register"),
            const SizedBox(height: 60),
            const Text("- OR Continue with -"),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSocialCircle(imagePath: 'assets/images/google.png'),
                SizedBox(width: 10),
                CustomSocialCircle(imagePath: 'assets/images/apple.png'),
                SizedBox(width: 10),
                CustomSocialCircle(imagePath: 'assets/images/facebook.png'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("I already Have an Account"),
                const SizedBox(width: 2),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColor.primaryColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
