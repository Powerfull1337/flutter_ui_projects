import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';
// import 'package:stylish_ecommerce_app/auth_pages/login_page.dart';
//import 'package:stylish_ecommerce_app/splash_pages/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_ecommerce_app/main_pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish Ecommerce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          textTheme: GoogleFonts.montserratTextTheme(),
          inputDecorationTheme:
              const InputDecorationTheme(focusColor: AppColor.primaryColor)),
      home: const MainPage(),
    );
  }
}
