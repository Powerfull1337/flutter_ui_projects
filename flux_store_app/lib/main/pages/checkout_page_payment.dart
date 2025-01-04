import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';
import 'package:flux_store_app/main/pages/checkout_page_order_copmleted.dart';
import 'package:flux_store_app/main/widgets/custom_credit_card.dart';
import 'package:flux_store_app/main/widgets/tracker_checkout.dart';

class CheckoutPagePayment extends StatefulWidget {
  const CheckoutPagePayment({super.key});

  @override
  State<CheckoutPagePayment> createState() => _CheckoutPagePaymentState();
}

class _CheckoutPagePaymentState extends State<CheckoutPagePayment> {
  int _selectedPaymentContainerIndex = 0;
  int currentCard = 0;
  bool isBoxChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TrackerCheckout(
                    colorFirstIcon: Colors.black,
                    colorSecondIcon: Colors.black,
                    colorThirdIcon: Colors.grey,
                  ),
                  const SizedBox(height: 29),
                  const Text(
                    "STEP 1",
                    style: TextStyle(fontSize: 11),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Payment",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 42),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child:
                              _buildPaymentContainer(0, Icons.money, "Cash")),
                      const SizedBox(width: 15),
                      Expanded(
                          flex: 1,
                          child: _buildPaymentContainer(
                              1, Icons.card_travel, "Credit Card")),
                      const SizedBox(width: 15),
                      Expanded(
                          flex: 1,
                          child:
                              _buildPaymentContainer(2, Icons.more_horiz, "")),
                    ],
                  ),
                  const SizedBox(height: 52),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Choose your card",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("Add new +",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.red)),
                    ],
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
                              imagePath:
                                  'assets/images/main/world_map_blue.jpg',
                              cardNumber: '1234567890098712',
                              cardHolderName: 'Denys Palamarchuk',
                              validThru: '05/25',
                              typeCard: 'assets/images/checkout/visa.png'),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 44),
                  const Text("or check out with",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  const SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildAnotherPaymentMethod(
                          'assets/images/checkout/paypal.png'),
                      _buildAnotherPaymentMethod(
                          'assets/images/checkout/visa.png'),
                      _buildAnotherPaymentMethod(
                          'assets/images/checkout/mastercard.png'),
                      _buildAnotherPaymentMethod(
                          'assets/images/checkout/google-pay.png'),
                      _buildAnotherPaymentMethod(
                          'assets/images/checkout/amex.png'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Container(
              height: 455,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product price",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(
                          "\$ 110",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(
                          "\$ Freeship",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "\$ 110",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(height: 46),
                    Row(
                      children: [
                        Checkbox(
                          value: isBoxChecked,
                          checkColor: Colors.white,
                          fillColor: WidgetStateProperty.resolveWith<Color>(
                              (Set<WidgetState> states) {
                            if (states.contains(WidgetState.selected)) {
                              return Colors.green;
                            }
                            return Colors.white;
                          }),
                          onChanged: (bool? newValue) {
                            setState(() {
                              isBoxChecked = newValue ?? false;
                            });
                          },
                        ),
                        RichText(
                          text: const TextSpan(
                            text: "I agree to ",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Terms and conditions",
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CheckoutPageOrderCopmleted()));
                      },
                      text: "Place my order",
                      width: double.infinity,
                      color: const Color(0xFF343434),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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



  Widget _buildPaymentContainer(
    int index,
    IconData icon,
    String? text,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPaymentContainerIndex = index;
        });
      },
      child: Container(
        height: 64,
        width: 94,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(4, 4),
            ),
          ],
          color: _selectedPaymentContainerIndex == index
              ? const Color(0xFF43484B)
              : Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: _selectedPaymentContainerIndex == index
                  ? Colors.white
                  : const Color(0xFF6E768A),
            ),
            if (text != null && text.isNotEmpty)
              Text(
                text,
                style: TextStyle(
                  color: _selectedPaymentContainerIndex == index
                      ? Colors.white
                      : const Color(0xFF6E768A),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
