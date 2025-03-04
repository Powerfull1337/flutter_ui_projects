import 'package:flutter/material.dart';
import 'package:mbooking_app/navigator.dart';
import 'package:mbooking_app/signup/pages/verify_otp_page.dart';
import 'package:mbooking_app/widgets/custom_button.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            NavigationService().pop();
          },
          child: const Icon(
            Icons.arrow_back_sharp,
            size: 40,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Sign Up",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 48),
            _buildSignUpTextField(),
            const SizedBox(height: 32),
            CustomButton(
              text: "Continue",
              onTap: () {
                NavigationService().push(const VerifyOtpPage());
              },
            ),
            const Spacer(),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Or continue with',
                      style: TextStyle(color: Colors.white70)),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const _SignupSocialButton(
                text: "Facebook", imagePath: 'assets/images/facebook.png'),
            const SizedBox(height: 16),
            const _SignupSocialButton(
                text: "Google", imagePath: 'assets/images/google.png'),
            const SizedBox(height: 40),
            const Text(
              "By sign in or sign up, you agree to our Terms of Service and Privacy Policy",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFB3B3B3)),
            )
          ],
        ),
      ),
    );
  }

  TextField _buildSignUpTextField() => const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 12.0),
          prefixIcon: Icon(
            Icons.phone,
            color: Colors.white,
            size: 32,
          ),
          hintText: '(704) 555-0127',
          hintStyle: TextStyle(color: Colors.white54),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        keyboardType: TextInputType.phone,
      );
}

class _SignupSocialButton extends StatelessWidget {
  const _SignupSocialButton({required this.imagePath, required this.text});

  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(64),
          color: const Color(0xFF1A1A1A),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 15,
              width: 15,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
