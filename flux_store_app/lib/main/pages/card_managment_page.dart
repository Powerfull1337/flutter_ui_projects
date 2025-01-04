
import 'package:flutter/material.dart';
import 'package:flux_store_app/main/pages/add_credit_card_page.dart';
import 'package:flux_store_app/main/widgets/custom_credit_card.dart';

class CardManagmentPage extends StatelessWidget {
  const CardManagmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        centerTitle: true,
        title: const Text("Payment"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Card Managment",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddCreditCardPage()));
                  },
                  child: const Text(
                    "Add new + ",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.9),
              itemCount: 2,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: CustomCreditCard(
                      imagePath: 'assets/images/main/world_map_blue.jpg',
                      cardNumber: '1234567890098712',
                      cardHolderName: 'Denys Palamarchuk',
                      validThru: '05/25',
                      typeCard: 'assets/images/checkout/mastercard.png'),
                );
              },
            ),
          ),
          const SizedBox(height: 44),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text("or check out with",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildAnotherPaymentMethod('assets/images/checkout/paypal.png'),
                _buildAnotherPaymentMethod('assets/images/checkout/visa.png'),
                _buildAnotherPaymentMethod(
                    'assets/images/checkout/mastercard.png'),
                _buildAnotherPaymentMethod(
                    'assets/images/checkout/google-pay.png'),
                _buildAnotherPaymentMethod('assets/images/checkout/amex.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container _buildAnotherPaymentMethod(String imagePath) {
  return Container(
    width: 50,
    padding: const EdgeInsets.symmetric(vertical: 5),
    height: 34,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey.withOpacity(0.5),
      ),
      borderRadius: BorderRadius.circular(4.25),
    ),
    child: Image.asset(
      imagePath,
    ),
  );
}
