import 'package:flutter/material.dart';
import 'package:flux_store_app/auth/widgets/custmo_button.dart';

class CheckoutPagePayment extends StatefulWidget {
  const CheckoutPagePayment({super.key});

  @override
  State<CheckoutPagePayment> createState() => _CheckoutPagePaymentState();
}

class _CheckoutPagePaymentState extends State<CheckoutPagePayment> {
  int _selectedPaymentContainerIndex = 0;
  int currentCard = 0;
  bool isBoxChecked = false;
  final PageController _pageCardController =
      PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Icon(Icons.arrow_back_ios, color: Colors.black),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(width: 8),
                      ...List.generate(
                          5,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Container(
                                  width: 6,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )),
                      SizedBox(width: 8),
                      Icon(
                        Icons.card_travel,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(width: 8),
                      ...List.generate(
                          5,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )),
                      SizedBox(width: 8),
                      Icon(
                        Icons.check_circle,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(height: 29),
                  Text(
                    "STEP 1",
                    style: TextStyle(fontSize: 11),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Payment",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 42),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child:
                              _buildPaymentContainer(0, Icons.money, "Cash")),
                      SizedBox(width: 15),
                      Expanded(
                          flex: 1,
                          child: _buildPaymentContainer(
                              1, Icons.card_travel, "Credit Card")),
                      SizedBox(width: 15),
                      Expanded(
                          flex: 1,
                          child:
                              _buildPaymentContainer(2, Icons.more_horiz, "")),
                    ],
                  ),
                  SizedBox(height: 52),
                  Row(
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
                  SizedBox(height: 30),
                  SizedBox(
                    height: 220,
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageCardController,
                      itemCount: 3,
                      onPageChanged: (int index) {
                        setState(() {
                          currentCard = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return _buildCard(index);
                      },
                    ),
                  ),
                  SizedBox(height: 44),
                  Text("or check out with",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  SizedBox(height: 19),
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
            SizedBox(height: 60),
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
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Row(
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
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    Row(
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
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    Row(
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
                    SizedBox(height: 46),
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
                          text: TextSpan(
                            text: "I agree to",
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
                    SizedBox(height: 60),
                    CustomButton(
                      text: "Place my order",
                      width: double.infinity,
                      color: Color(0xFF343434),
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
      padding: EdgeInsets.symmetric(vertical: 5),
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

  Widget _buildCard(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VISA',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 20),
                Text(
                  '4364 1345 8932 8378',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CARDHOLDER NAME',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Sunie Pham',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VALID THRU',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          '05/24',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
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
              offset: Offset(4, 4),
            ),
          ],
          color: _selectedPaymentContainerIndex == index
              ? Color(0xFF43484B)
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
                  : Color(0xFF6E768A),
            ),
            if (text != null && text.isNotEmpty)
              Text(
                text,
                style: TextStyle(
                  color: _selectedPaymentContainerIndex == index
                      ? Colors.white
                      : Color(0xFF6E768A),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
