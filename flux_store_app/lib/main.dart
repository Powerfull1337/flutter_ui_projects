import 'package:flutter/material.dart';
import 'package:flux_store_app/main/pages/checkout_page_order_copmleted.dart';

import 'package:flux_store_app/main/pages/checkout_page_payment.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: CheckoutPageOrderCopmleted(),
    );
  }
}
