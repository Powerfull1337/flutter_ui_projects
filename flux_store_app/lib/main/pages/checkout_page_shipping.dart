import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';
import 'package:flux_store_app/main/pages/checkout_page_payment.dart';
import 'package:flux_store_app/main/widgets/checkout_text_field.dart';
import 'package:flux_store_app/main/widgets/tracker_checkout.dart';

class CheckoutPageShipping extends StatefulWidget {
  const CheckoutPageShipping({super.key});

  @override
  State<CheckoutPageShipping> createState() => _CheckoutPageShippingState();
}

int selectedShipping = 0;
bool isBoxChecked = false;

class _CheckoutPageShippingState extends State<CheckoutPageShipping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Checkout",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 90,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {},
            child: Container(
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
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TrackerCheckout(
                colorFirstIcon: Colors.black,
                colorSecondIcon: Colors.grey,
                colorThirdIcon: Colors.grey,
              ),
              SizedBox(height: 29),
              Text(
                "STEP 1",
                style: TextStyle(fontSize: 11),
              ),
              SizedBox(height: 10),
              Text(
                "Shipping",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 42),
              CheckoutTextField(
                labelText: "First name",
              ),
              SizedBox(height: 35),
              CheckoutTextField(
                isRequired: true,
                labelText: "Last name",
              ),
              SizedBox(height: 35),
              CheckoutTextField(
                  labelText: "Country",
                  asteriskColor: Colors.green,
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    size: 28,
                  )),
              SizedBox(height: 35),
              CheckoutTextField(
                labelText: "Street name",
                asteriskColor: Colors.green,
              ),
              SizedBox(height: 35),
              CheckoutTextField(
                labelText: "City",
                asteriskColor: Colors.green,
              ),
              SizedBox(height: 35),
              CheckoutTextField(
                labelText: "State / Province",
                isArsterisk: false,
              ),
              SizedBox(height: 35),
              CheckoutTextField(
                labelText: "Zip-code",
                asteriskColor: Colors.green,
              ),
              SizedBox(height: 35),
              CheckoutTextField(
                labelText: "Phone number",
                asteriskColor: Colors.green,
              ),
              SizedBox(height: 19),
              Text(
                "Shipping method",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 20),
              _buildShippingOption(0, "Free", "Delivery to home",
                  "Delivery from 3 to 7 business days", 0.00),
              SizedBox(height: 16),
              _buildShippingOption(1, "\$9.90", "Delivery to home",
                  "Delivery from 4 to 6 business days", 9.90),
              SizedBox(height: 16),
              _buildShippingOption(2, "\$9.90", "Fast Delivery",
                  "Delivery from 2 to 3 business days", 9.90),
              SizedBox(height: 63),
              Text(
                "Coupon Code",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              _buildPromoField(),
              SizedBox(height: 40),
              Text(
                "Billing Adress",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: isBoxChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isBoxChecked = newValue ?? false;
                      });
                    },
                  ),
                  SizedBox(width: 14),
                  Text("Copy address data from shipping")
                ],
              ),
              SizedBox(height: 62),
              CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckoutPagePayment()));
                },
                text: "Continue to Payment",
                width: double.infinity,
                color: Color(0xFF343434),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildPromoField() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 25),
        hintText: "Have a code? type it here...",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 15),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Validate",
              style: TextStyle(color: Color(0xFF508A7B), fontSize: 14),
            ),
          ),
        ),
        filled: true,
        fillColor: Color(0xFFF7F7F8),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildShippingOption(
      int index, String price, String title, String subtitle, double cost) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedShipping = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: selectedShipping == index
              ? Border.all(
                  color: Colors.grey.shade300,
                  width: 1,
                )
              : null,
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Radio<int>(
                value: index,
                groupValue: selectedShipping,
                onChanged: (int? newValue) {
                  setState(() {
                    selectedShipping = newValue!;
                  });
                },
                activeColor: Color(0xFF508A7B),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
