import 'package:flutter/material.dart';
import 'package:flux_store_app/main/models/product.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(24)),
                child: Image.asset(
                  product.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(product.title),
                        Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Color(0xFF508A7B),
                                borderRadius: BorderRadius.circular(6)),
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\$ ${product.price.toString()}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Size: M"),
                            SizedBox(width: 6),
                            Text("Color: White"),
                          ],
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.close,
                                size: 18,
                              ),
                              SizedBox(width: 6),
                              Text("1"),
                              SizedBox(width: 6),
                              Icon(
                                Icons.add,
                                size: 18,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
