import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';
import 'package:stylish_ecommerce_app/auth_pages/forgot_password_page.dart';
import 'package:stylish_ecommerce_app/auth_pages/register_page.dart';
import 'package:stylish_ecommerce_app/widgets/custom_button.dart';
import 'package:stylish_ecommerce_app/widgets/custom_field.dart';
import 'package:stylish_ecommerce_app/widgets/custom_social_circle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              "Welcome Back!",
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
            const SizedBox(height: 10),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordPage()));
                    },
                    child: const Text("Forgot Password?",
                        style: TextStyle(color: AppColor.primaryColor)))),
            const SizedBox(height: 20),
            CustomButton(onTap: () {}, text: "Login"),
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
                const Text("Create An Account"),
                const SizedBox(width: 2),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  child: const Text(
                    "Sign Up",
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
