import 'package:flutter/material.dart';
import 'package:flux_store_app/main/models/category.dart';
import 'package:flux_store_app/main/models/product.dart';
import 'package:flux_store_app/main/pages/collection_page.dart';
import 'package:flux_store_app/main/widgets/product_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int currentPage = 0;
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                _categoryBuild(),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Stack(
                    children: [
                      PageView(
                        controller: _controller,
                        onPageChanged: (index) { 
                          setState(() {
                            currentPage = index;
                          });
                        },
                        children: [
                          buildImageCard(imagePath: 'assets/images/main/beauty1.jpg',
                              text: 'AutumnCollection 2021',onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const CollectionPage() ));
                              } ),
                           buildImageCard(imagePath: 'assets/images/main/beauty2.jpg',
                              text: 'AutumnCollection 2022',onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const CollectionPage() ));
                              } ),
                           buildImageCard(imagePath: 'assets/images/main/beauty2.jpg',
                              text: 'AutumnCollection 2023',onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const CollectionPage() ));
                              } ),
                        ],
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SmoothPageIndicator(
                            controller: _controller,
                            count: 3,
                            effect: const WormEffect(
                              dotHeight: 8,
                              dotWidth: 8,
                              activeDotColor: Colors.white,
                            ),
                            onDotClicked: (index) {
                              _controller.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Feature Product",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Show all",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfProducts.length,
                    itemBuilder: (context, index) {
                      final product = listOfProducts[index];

                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: ProductCard(
                          title: product.title,
                          imagePath: product.imagePath,
                          price: product.price,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(color: Color(0xFFF8F8FA)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I NEW COLLECTION",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "HANG OUT",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "& PARTY",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Stack(children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.withOpacity(0.3),
                              radius: 80,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey.withOpacity(0.4),
                              radius: 60,
                            ),
                            SizedBox(
                              width: 136,
                              height: 150,
                              child: Image.asset(
                                "assets/images/main/woman without bg 1.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ])
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Show all",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfProducts.length,
                    itemBuilder: (context, index) {
                      final product = listOfProducts[index];

                      return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 66,
                                height: 66,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    product.imagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    product.title,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    product.price.toString(),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ));
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Selection",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Show all",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF8F8FA),
                      borderRadius: BorderRadius.circular(24)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sale up to 40%",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "FOR SLIM & BEAUTY",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Stack(children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.withOpacity(0.4),
                              radius: 60,
                            ),
                            SizedBox(
                              width: 136,
                              height: 150,
                              child: Image.asset(
                                "assets/images/main/woman without bg 2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ])
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F8FA),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Summer Collection 2021",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Most sexy & fabulous design",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.4),
                            radius: 60,
                          ),
                          SizedBox(
                            width: 156,
                            child: Image.asset(
                              "assets/images/main/woman without bg 3.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 170,
                        height: 194,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.asset(
                                    height: 194,
                                    width: 70,
                                    'assets/images/main/woman without bg 5.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "T-Shirts",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                      width: 100,
                                      child: Text(
                                        "The Office Life",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                                      )),
                                ],
                              ),
                            )
                          ],
                        )),
                    Container(
                        width: 170,
                        height: 194,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(5, 20, 0, 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dresses",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                      width: 100,
                                      child: Text(
                                        "Elegant Design",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                                      )),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.asset(
                                    height: 194,
                                    width: 65,
                                    'assets/images/main/woman without bg 4.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImageCard({required String imagePath, required String text, required Function() onTap} ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Positioned(
              right: 10,
              top: 20,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _categoryBuild() {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: listOfCategories.asMap().entries.map((entry) {
          int index = entry.key;
          Category category = entry.value;

          bool isSelected = index == _selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isSelected ? const Color(0xFF3A2C27) : Colors.white,
                          width: isSelected ? 2 : 0,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected
                            ? const Color(0xFF3A2C27)
                            : Colors.grey.withOpacity(0.5),
                      ),
                      child: Icon(
                        category.icon,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  category.title,
                  style: TextStyle(
                    color: isSelected ? const Color(0xFF3A2C27) : Colors.grey,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
