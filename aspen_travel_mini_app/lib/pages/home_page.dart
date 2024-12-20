import 'package:aspen_travel_mini_app/colors.dart';
import 'package:aspen_travel_mini_app/models/house.dart';
import 'package:aspen_travel_mini_app/pages/details_page.dart';
import 'package:aspen_travel_mini_app/widgets/house_card.dart';
import 'package:aspen_travel_mini_app/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int selectedIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColor.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home1), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.ticket), label: "Tickets"),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.favorite_chart1), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Iconsax.user), label: "Profile")
          ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.location_on,
                      color: AppColor.blue,
                    ),
                    Text(
                      "Aspen, USA",
                      style: TextStyle(fontSize: 15),
                    ),
                    Icon(Icons.arrow_drop_down_sharp, color: AppColor.blue),
                  ],
                ),
                const Text(
                  "Aspen",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: SearchField(),
                ),
                categorySelection(),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: AppColor.blue),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      itemCount: listOfHouses.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final house = listOfHouses[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: HouseCard(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                            house: house,
                                          )));
                            },
                            name: house.name,
                            rating: house.rating,
                            image: house.image,
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Recomdended",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: listOfRecomendedHouse.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final house = listOfRecomendedHouse[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: HouseCard(
                            onTap: (){},
                            name: house.name,
                            rating: house.rating,
                            image: house.image,
                            height: 150,
                            width: 200,
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox categorySelection() {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        itemCount: listOfCategories.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColor.blue.withOpacity(0.1)
                    : Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              child: Text(
                listOfCategories[index],
                style: TextStyle(
                    fontWeight: selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: 18,
                    color:
                        selectedIndex == index ? AppColor.blue : Colors.grey),
              ),
            ),
          );
        },
      ),
    );
  }
}
