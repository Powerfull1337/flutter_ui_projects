import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flux_store_app/auth/widgets/custom_button.dart';
import 'package:flux_store_app/main/widgets/dashed_button.dart';

class RateOrderPage extends StatefulWidget {
  const RateOrderPage({super.key});

  @override
  State<RateOrderPage> createState() => _RateOrderPageState();
}

class _RateOrderPageState extends State<RateOrderPage> {
  final int maxCharacters = 50;
  String currentText = "";

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
        title: const Text("Rate Product"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(children: [
              const SizedBox(height: 11),
              Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFF575757),
                    borderRadius: BorderRadius.circular(6)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.card_giftcard,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 21),
                      Text(
                        "Submit your review to get 5 points",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: 31),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 31),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    initialRating: 1,
                    itemSize: 60,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color(0xFF508A7B),
                    ),
                    onRatingUpdate: (rating) {
                     
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentText.isEmpty
                              ? 'Would you like to write anything about this product?'
                              : "",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          maxLength: maxCharacters,
                          maxLines: 5,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                            isDense: true,
                          ),
                          onChanged: (text) {
                            setState(() {
                              currentText = text;
                            });
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '${maxCharacters - currentText.length} characters left',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DashedButton(
                    icon: Icons.image,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 24),
                  DashedButton(
                    icon: Icons.camera_alt,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const CustomButton(
                text: "Submit Review",
                width: double.infinity,
                color: Color(0xFF343434),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
