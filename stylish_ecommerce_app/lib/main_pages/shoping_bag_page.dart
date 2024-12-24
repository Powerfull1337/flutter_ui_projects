import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stylish_ecommerce_app/app_color.dart';
import 'package:stylish_ecommerce_app/widgets/custom_button.dart';
import 'package:stylish_ecommerce_app/widgets/payment_success_dialogue.dart';

class ShopingBagPage extends StatelessWidget {
  const ShopingBagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Text(
                  "Shopping bag",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(Iconsax.heart),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 170,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/sneakers 1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Women’s Casual Wear",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Text(
                          "Checked Single-Breasted Blazer",
                          softWrap: true,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    "Size",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "42",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    "Qty",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "by",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "10 May 2XXX",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.topic_sharp),
                    SizedBox(width: 15),
                    Text(
                      "Apply Coupons",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  "Select",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 30),
            Divider(),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Order Painment Details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Amounts",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Text(
                  "\$ 7000.00",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Convenience",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Know More",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  "Apply Coupon",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Fee",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Free",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Divider(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Total",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$ 7000.00",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₹7,000.00",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "View Details",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            child: CustomButton(
                              text: "Proceed to Payment",
                              onTap: () {
                                 showPaymentSuccessDialog(context);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
