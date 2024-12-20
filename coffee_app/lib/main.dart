import 'package:coffee_app/pages/app_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      theme: ThemeData(
        textTheme: GoogleFonts.soraTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const CoffeeAppMainScreen(),
    );
  }
}