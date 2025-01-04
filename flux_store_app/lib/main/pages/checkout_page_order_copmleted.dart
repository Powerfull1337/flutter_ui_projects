import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';
import 'package:flux_store_app/main/pages/main_page.dart';
import 'package:flux_store_app/main/widgets/tracker_checkout.dart';

class CheckoutPageOrderCopmleted extends StatelessWidget {
  const CheckoutPageOrderCopmleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Check out",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 90,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
        child: Column(
          children: [
            const TrackerCheckout(
              colorFirstIcon: Colors.black,
              colorSecondIcon: Colors.black,
              colorThirdIcon: Colors.black,
            ),
            const SizedBox(
              height: 43,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Order Completed",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 79,
            ),
            Image.asset('assets/images/checkout/success.png'),
            const SizedBox(
              height: 55,
            ),
            const Text(
              "Thank you for your purchase. You can view your order in ‘My Orders’ section.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 108,
            ),
            CustomButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              text: "Continue shopping",
              width: double.infinity,
              color: const Color(0xFF343434),
            ),
          ],
        ),
      ),
    );
  }
}
