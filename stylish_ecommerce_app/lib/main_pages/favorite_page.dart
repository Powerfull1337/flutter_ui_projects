import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_ecommerce_app/models/product.dart';
import 'package:stylish_ecommerce_app/widgets/custom_search_field.dart';
import 'package:stylish_ecommerce_app/widgets/product_card.dart';
import 'package:stylish_ecommerce_app/widgets/sort_filter_item.dart';

import 'detail_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(24)),
                          child: const Icon(Icons.sort_rounded,
                              color: Colors.black)),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                        ),
                        Text(
                          "Stylish",
                          style: GoogleFonts.libreCaslonText(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage('assets/images/profile_photo.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const CustomSearchField(),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "52,082+ Items",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22),
                    ),
                    Row(
                      children: [
                        SortFilterItem(text: "Sort", icon: Icons.swap_vert),
                        SizedBox(width: 15),
                        SortFilterItem(
                            text: "Filter", icon: Icons.filter_alt_outlined),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.60,
                    ),
                    itemCount: listOfProducts.length,
                    itemBuilder: (context, index) {
                      final product = listOfProducts[index];
                      return ProductCard(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                          product: product,
                                        )));
                          },
                          product: product);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
