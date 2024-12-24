import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';
import 'package:stylish_ecommerce_app/models/product.dart';
import 'package:stylish_ecommerce_app/widgets/detail_page_button.dart';
import 'package:stylish_ecommerce_app/widgets/expanded_icon_button.dart';
import 'package:stylish_ecommerce_app/widgets/info_tags.dart';
import 'package:stylish_ecommerce_app/widgets/product_card.dart';
import 'package:stylish_ecommerce_app/widgets/sort_filter_item.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.product});

  final Product product;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const Icon(Icons.arrow_back, color: Colors.black),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(Icons.shopping_cart,
                            color: Colors.black),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(widget.product.imagePath),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Size: ${_selectedIndex + 6}UK",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      bool isSelected = index == _selectedIndex;
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = isSelected ? -1 : index;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColor.primaryColor.withOpacity(0.7),
                                  width: 1),
                              color: isSelected
                                  ? AppColor.primaryColor.withOpacity(0.7)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "${index + 6} UK",
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : AppColor.primaryColor.withOpacity(0.7),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  widget.product.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.product.description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const Icon(Icons.star_half, size: 14, color: Colors.amber),
                    const SizedBox(width: 5),
                    Text(
                      widget.product.reviews.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '\$${widget.product.price.toStringAsFixed(0)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '\$${widget.product.originalPrice.toStringAsFixed(0)}',
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${widget.product.discount.toStringAsFixed(0)}%Off',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    InfoTags(
                      icon: Icons.map_sharp,
                      text: "Nearest Store",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InfoTags(
                      icon: Icons.lock,
                      text: "VIP",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InfoTags(
                      icon: Icons.assignment_returned,
                      text: "Return policy",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DetailPageButton(
                        icon: Icons.shopping_cart,
                        text: "Go to cart",
                        topColor: Color(0xFF3F92FF),
                        bottomColor: Color(0xFF0B3689)),
                    DetailPageButton(
                        icon: Icons.shopping_bag,
                        text: "Buy now",
                        topColor: Color(0xFF71F9A9),
                        bottomColor: Color(0xFF31B769)),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFCCD5),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "1 within Hour",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    ExpandedIconButton(
                        text: "View Similar",
                        icon: Icons.remove_red_eye_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    ExpandedIconButton(
                        text: "Add to Compare", icon: Icons.compare),
                  ],
                ),
                const SizedBox(height: 10),
                const Text("Similar to",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "282+ Items",
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
                const SizedBox(height: 20),
                SizedBox(
                  height: 300,
                  child: PageView.builder(
                    controller: PageController(viewportFraction: 0.6),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final product = listOfProducts[index];
                      return Transform.translate(
                        offset: const Offset(-80, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: ProductCard(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                              product: product,
                                            )));
                              },
                              product: product),
                        ),
                      );
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
