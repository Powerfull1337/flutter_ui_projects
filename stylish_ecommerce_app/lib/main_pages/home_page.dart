import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_ecommerce_app/app_color.dart';
import 'package:stylish_ecommerce_app/models/category.dart';
import 'package:stylish_ecommerce_app/models/product.dart';
import 'package:stylish_ecommerce_app/widgets/custom_info_button.dart';
import 'package:stylish_ecommerce_app/widgets/custom_search_field.dart';
import 'package:stylish_ecommerce_app/widgets/custom_info_container.dart';
import 'package:stylish_ecommerce_app/widgets/product_card.dart';
import 'package:stylish_ecommerce_app/widgets/sort_filter_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
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
                      "All Featured",
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
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfCategories.length,
                    itemBuilder: (context, index) {
                      final category = listOfCategories[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(category.imagePath),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              category.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: PageView(
                    controller: controller,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset('assets/images/discount1.jpg',
                            fit: BoxFit.cover),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset('assets/images/discount2.jpg',
                            fit: BoxFit.cover),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset('assets/images/discount3.jpg',
                            fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: Colors.pink.withOpacity(0.6),
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
                const SizedBox(height: 10),
                const CustomInfoContainer(
                  text: "Deal of the day",
                  icon: Icons.timer,
                  color: Colors.blue,
                  secondaryText: "22h 55m 22s remaining",
                  backgaundButtonColor: Colors.blue,
                  buttonText: "View All",
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
                          child: ProductCard(product: product),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/special_offer.png"),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "Special Offers",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: const Center(child: Text("😱")),
                                    )
                                  ],
                                ),
                                const Text(
                                  "We make sure you get the offer you need at best prices",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                  softWrap: true,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 140,
                            width: 100,
                            child: Image.asset('assets/images/Heels.jpg')),
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Flat and Heels",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "Stand a chance to get rewarded",
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 120,
                                child: CustomInfoButton(
                                  buttonText: "Visit Now",
                                  backgroundButtonColor: AppColor.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                CustomInfoContainer(
                  text: "Tranding Products",
                  icon: Icons.calendar_month,
                  color: AppColor.primaryColor.withOpacity(0.7),
                  secondaryText: "Last Date 29/02/22",
                  backgaundButtonColor: AppColor.primaryColor.withOpacity(0.7),
                  buttonText: "View All",
                ),
                const SizedBox(height: 10),
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
                          child: ProductCard(product: product),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 270,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/hot_summer_sale.png',
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New Arrivals',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                Text(
                                  "Summer’ 25 Collections",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                )
                              ],
                            ),
                            CustomInfoButton(
                                backgroundButtonColor:
                                    AppColor.primaryColor.withOpacity(0.7),
                                buttonText: "View All")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sponsored",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Image.asset('assets/images/up to 50 off.png'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "up to 50% Off",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
