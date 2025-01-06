import 'package:flutter/material.dart';
import 'package:mbooking_app/main/pages/main_page.dart';
import 'package:mbooking_app/navigator.dart';
import 'package:mbooking_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService().navigatorKey,
      theme: ThemeData(
        fontFamily: 'SFProDisplay',
        textTheme: AppFontTheme.sfProFont.copyWith(
          bodyLarge: const TextStyle(color: Colors.white),
          bodyMedium: const TextStyle(color: Colors.white),
          displayLarge: const TextStyle(color: Colors.white),
          displayMedium: const TextStyle(color: Colors.white),
          displaySmall: const TextStyle(color: Colors.white),
          headlineMedium: const TextStyle(color: Colors.white),
          headlineSmall: const TextStyle(color: Colors.white),
          titleLarge: const TextStyle(color: Colors.white),
          titleMedium: const TextStyle(color: Colors.white),
          titleSmall: const TextStyle(color: Colors.white),
          labelLarge: const TextStyle(color: Colors.white),
          bodySmall: const TextStyle(color: Colors.white),
          labelSmall: const TextStyle(color: Colors.white),
        ),
      ),
      home: const MainPage(),
    );
  }
}
