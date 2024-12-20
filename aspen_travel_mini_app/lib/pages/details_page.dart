import 'package:aspen_travel_mini_app/colors.dart';
import 'package:aspen_travel_mini_app/models/house.dart';
import 'package:aspen_travel_mini_app/widgets/custom_button.dart';
import 'package:aspen_travel_mini_app/widgets/facilitie_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.house});

  final House house;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(24)),
                  height: 350,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      house.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 15,
                    left: 15,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child:
                                const Center(child: Icon(Icons.arrow_back))))),
                Positioned(
                    right: 20,
                    bottom: 15,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Iconsax.heart4,
                          color: Colors.red,
                        )))
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  house.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const Text("Show map",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: AppColor.blue)),
                const SizedBox(height: 20),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  house.rating.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text("(${house.reviews.toString()} Reviews) ",
                    style: const TextStyle(fontSize: 16)),
              ],
            ),
            ReadMoreText(
              house.description,
              trimLength: 150,
              trimMode: TrimMode.Length,
              trimCollapsedText: " Read More",
              trimExpandedText: " Read Less",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              moreStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColor.blue,
              ),
              lessStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColor.blue,
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Facilities",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FacilitieItem(
                  text: "1 Heater",
                  icon: Icons.wifi,
                ),
                FacilitieItem(text: "Dinner", icon: Icons.dining),
                FacilitieItem(text: "1 Tub", icon: Icons.hot_tub),
                FacilitieItem(text: "Pool", icon: Icons.pool),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Price",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text("\$${house.price.toString()}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2DD7A4),
                              fontSize: 30)),
                    ],
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    onTap: () {},
                    text: "Book now",
                    icon: Icons.arrow_forward,
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
