import 'package:flutter/material.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/main/models/film.dart';
import 'package:mbooking_app/main/pages/ticket_page.dart';
import 'package:mbooking_app/navigator.dart';
import 'package:mbooking_app/widgets/custom_button.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key, required this.film});
  final Film film;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int selectedfPaymentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              )),
          centerTitle: true,
          title: const Text(
            "Payment",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 17),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF1C1C1C),
                      borderRadius: BorderRadius.circular(24)),
                  height: 150,
                  width: double.infinity,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(24),
                            bottomLeft: Radius.circular(24)),
                        child: Image.asset(
                          widget.film.imagePath,
                          height: double.infinity,
                          fit: BoxFit.cover,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 19.5, horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.film.title,
                              style: const TextStyle(
                                  color: AppColor.primaryOrangeColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                const SizedBox(width: 15),
                                Text(
                                  widget.film.genres
                                      .map((genre) => genreToString(genre))
                                      .join(', '),
                                  style: const TextStyle(
                                      color: Color(0xFFE6E6E6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Vincom Ocean Park CGV",
                                  style: TextStyle(
                                      color: Color(0xFFE6E6E6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  size: 20,
                                  Icons.timer,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 15),
                                Text(
                                  "${widget.film.time} • 14:15 ",
                                  style: const TextStyle(
                                      color: Color(0xFFE6E6E6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order id",
                      style: TextStyle(
                          color: Color(0xFFF2F2F2),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "787678678678",
                      style: TextStyle(
                          color: Color(0xFFF2F2F2),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Seat",
                      style: TextStyle(
                          color: Color(0xFFF2F2F2),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "H7, H8",
                      style: TextStyle(
                          color: Color(0xFFF2F2F2),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10),
                          hintText: "discound code",
                          hintStyle: const TextStyle(color: Color(0xFFF2F2F2)),
                          fillColor: const Color(0xFF1C1C1C),
                          prefixIcon: const Icon(
                            Icons.discount,
                            color: Color(0xFFF2F2F2),
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: CustomButton(
                          text: "Apply",
                          borderRadius: BorderRadius.circular(6),
                        ))
                  ],
                ),
                const SizedBox(height: 32),
                const Divider(),
                const SizedBox(height: 32),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Seat",
                      style: TextStyle(
                          color: Color(0xFFF2F2F2),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "189.000 VND",
                      style: TextStyle(
                          color: AppColor.primaryOrangeColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Payment Method",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedfPaymentIndex = index;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: selectedfPaymentIndex == index
                                  ? const Color(0xFF261D08)
                                  : const Color(0xFF1C1C1C),
                              border: selectedfPaymentIndex == index
                                  ? Border.all(
                                      color: AppColor.primaryOrangeColor)
                                  : null),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/google-pay.png",
                                height: 40,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 16),
                              const Text(
                                "Google pay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Expanded(child: SizedBox()),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 15),
                    itemCount: 5,
                  ),
                ),
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFF261D08)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Complete your payment in",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF2F2F2)),
                      ),
                      Text(
                        "15:00",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryOrangeColor),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                CustomButton(
                  text: "Continue",
                  onTap: () {
                    NavigationService().push(const TicketPage());
                  },
                )
              ],
            ),
          ),
        ));
  }
}
