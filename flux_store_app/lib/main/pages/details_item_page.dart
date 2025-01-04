import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flux_store_app/main/models/product.dart';
import 'package:flux_store_app/main/widgets/product_card.dart';
import 'package:readmore/readmore.dart';

class DetailsItemPage extends StatefulWidget {
  const DetailsItemPage({super.key, required this.product});

  final Product product;

  @override
  State<DetailsItemPage> createState() => _DetailsItemPageState();
}

class _DetailsItemPageState extends State<DetailsItemPage> {
  bool isDescriptionExpanded = false;
  bool isReviewsExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.08,
              ),
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Image.asset(
                        widget.product.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                              ),
                              child: const Icon(Icons.arrow_back),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.product.title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\$${widget.product.price.toString()}",
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3.7,
                            itemSize: 25,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Color(0xFF508A7B),
                            ),
                            onRatingUpdate: (rating) {
                             
                            },
                            ignoreGestures: true,
                          ),
                          Text("(${widget.product.reviews.toString()})"),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Color',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  _buildColorOption(Colors.pink.shade100),
                                  const SizedBox(width: 10),
                                  _buildColorOption(Colors.black),
                                  const SizedBox(width: 10),
                                  _buildColorOption(Colors.red),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Size',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  _buildSizeOption('S'),
                                  const SizedBox(width: 10),
                                  _buildSizeOption('M'),
                                  const SizedBox(width: 10),
                                  _buildSizeOption('L', isSelected: true),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ExpansionTile(
                        collapsedShape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                        ),
                        shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                        ),
                        backgroundColor: Colors.white,
                        collapsedBackgroundColor: Colors.white,
                        tilePadding: EdgeInsets.zero,
                        title: const Text(
                          'Description',
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(
                          isDescriptionExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        onExpansionChanged: (expanded) {
                          setState(() {
                            isDescriptionExpanded = expanded;
                          });
                        },
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: ReadMoreText(
                              widget.product.description,
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
                                  color: Color(0xFF508A7B),
                                  decoration: TextDecoration.underline),
                              lessStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF508A7B),
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      ExpansionTile(
                        collapsedShape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                        ),
                        shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                        ),
                        backgroundColor: Colors.white,
                        collapsedBackgroundColor: Colors.white,
                        tilePadding: EdgeInsets.zero,
                        title: const Text(
                          'Reviews',
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(
                          isReviewsExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        onExpansionChanged: (expanded) {
                          setState(() {
                            isReviewsExpanded = expanded;
                          });
                        },
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                            fontSize: 48,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text('OUT OF 5'),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3.7,
                                          itemSize: 25,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Color(0xFF508A7B),
                                          ),
                                          onRatingUpdate: (rating) {
                                       
                                          },
                                          ignoreGestures: true,
                                        ),
                                        const Text('83 ratings'),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                _buildRatingBar(5, 80),
                                _buildRatingBar(4, 12),
                                _buildRatingBar(3, 5),
                                _buildRatingBar(2, 3),
                                _buildRatingBar(1, 0),
                                const SizedBox(height: 16),
                                _buildReview('Jennifer Rose', '5m ago',
                                    'I love it!', 3.7),
                                _buildReview('Kelly Rihana', '9m ago',
                                    'I’m very happy with my order...', 5),
                                const SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      ExpansionTile(
                        collapsedShape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                        ),
                        shape: const RoundedRectangleBorder(
                          side: BorderSide.none,
                        ),
                        backgroundColor: Colors.white,
                        collapsedBackgroundColor: Colors.white,
                        tilePadding: EdgeInsets.zero,
                        title: const Text(
                          'Shipping Information',
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: Icon(
                          isReviewsExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        children: [
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
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: const BoxDecoration(
                  color: Color(0xFF343434),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Add To Cart",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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

  Widget _buildRatingBar(int stars, int percentage) {
    return Row(
      children: [
        Text('$stars'),
        const SizedBox(width: 4),
        const Icon(Icons.star, color: Color(0xFF508A7B)),
        const SizedBox(width: 4),
        Expanded(
          child: LinearProgressIndicator(
            value: percentage / 100,
            backgroundColor: Colors.grey.shade300,
            color: const Color(0xFF508A7B),
            minHeight: 8,
          ),
        ),
      ],
    );
  }

  Widget _buildReview(String user, String time, String comment, double rating) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: const Icon(Icons.person),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      RatingBar.builder(
                        initialRating: rating,
                        itemSize: 15,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xFF508A7B),
                        ),
                        onRatingUpdate: (rating) {
        
                        },
                        ignoreGestures: true,
                      ),
                    ],
                  ),
                  Text(time, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(comment),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildColorOption(Color color) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
    );
  }

  Widget _buildSizeOption(String size, {bool isSelected = false}) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
        color: isSelected ? Colors.black : Colors.white,
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
