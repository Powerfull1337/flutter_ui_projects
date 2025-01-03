import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';
import 'package:flux_store_app/main/widgets/checkout_text_field.dart';
import 'package:flux_store_app/main/widgets/custom_credit_card.dart';

class AddCreditCardPage extends StatelessWidget {
  const AddCreditCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(left: 10),
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
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        centerTitle: true,
        title: Text("Add new card"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              CustomCreditCard(
                  imagePath: 'assets/images/main/world_map_blue.jpg',
                  cardNumber: '**************',
                  cardHolderName: '',
                  validThru: '',
                  typeCard: 'assets/images/checkout/mastercard.png'),
              SizedBox(height: 40),
              CheckoutTextField(
                labelText: "Cardholder Name",
                isArsterisk: false,
                isDivider: true,
              ),
              SizedBox(height: 30),
              CheckoutTextField(
                labelText: "Cardnumber",
                isArsterisk: false,
                isDivider: true,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CheckoutTextField(
                      labelText: "Expires",
                      isArsterisk: false,
                      isDivider: true,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 2,
                    child: CheckoutTextField(
                      labelText: "CVV",
                      isArsterisk: false,
                      isDivider: true,
                    ),
                  )
                ],
              ),
              SizedBox(height: 100),
              CustomButton(text: "Add Card")
            ],
          ),
        ),
      ),
    );
  }
}
