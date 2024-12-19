import 'package:aspen_travel_mini_app/pages/home_page.dart';
import 'package:aspen_travel_mini_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/splash_page_bg.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Text(
                          "Aspen",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white, fontSize: 80),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "Plan your",
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 28),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Luxurious Vacation',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    text: "Explore",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
