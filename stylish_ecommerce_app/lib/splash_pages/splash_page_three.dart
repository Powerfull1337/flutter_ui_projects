import 'package:flutter/material.dart';

class SplashPageThree extends StatelessWidget {
  const SplashPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Spacer(), 
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/splash3.png'),
                const Text(
                  "Get Your Order",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 28,
                  ),  
                ),
                const SizedBox(height: 10),
                const Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Spacer(), // Відступ після контенту
          ],
        ),
      ),
    );
  }
}