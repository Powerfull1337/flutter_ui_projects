import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/models/payment.dart';
import 'package:stylish_ecommerce_app/widgets/custom_button.dart';
import 'package:stylish_ecommerce_app/widgets/payment_container.dart';

class FinalCheckoutPage extends StatelessWidget {
  const FinalCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Checkout"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  "\$ 7,000",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  "\$  30",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  "\$  7,030",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Payment",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(
                    itemCount: listOfPayments.length,
                    itemBuilder: (context, index) {
                      final payment = listOfPayments[index];

                      return PaymentContainer(
                          imagePath: payment.imagePath, text: payment.text);
                    })),
            CustomButton(text: "Continue", onTap: () {})
          ],
        ),
      ),
    );
  }
}
