import 'package:flutter/material.dart';
import 'package:flux_store_app/main/models/product.dart';
import 'package:flux_store_app/main/pages/details_item_page.dart';

class GridItemsTwoInRow extends StatelessWidget {
  const GridItemsTwoInRow(
      {super.key, required this.product, this.isFavorite = false});

  final bool isFavorite;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsItemPage(product: product)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    product.imagePath,
                    fit: BoxFit.cover,
                    height: 150,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(
                        Icons.favorite,
                        color: isFavorite ? Colors.red : Colors.grey,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFF508A7B),
                    size: 16,
                  ),
                  const SizedBox(width: 3),
                  const Icon(
                    Icons.star,
                    color: Color(0xFF508A7B),
                    size: 16,
                  ),
                  const SizedBox(width: 3),
                  const Icon(
                    Icons.star,
                    color: Color(0xFF508A7B),
                    size: 16,
                  ),
                  const SizedBox(width: 3),
                  const Icon(
                    Icons.star,
                    color: Color(0xFF508A7B),
                    size: 16,
                  ),
                  const SizedBox(width: 3),
                  const Icon(
                    Icons.star,
                    color: Color(0xFF508A7B),
                    size: 16,
                  ),
                  const SizedBox(width: 3),
                  Text("(${product.reviews.toString()})")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
