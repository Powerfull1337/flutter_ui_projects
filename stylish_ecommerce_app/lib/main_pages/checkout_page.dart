import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Checkout"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 15),
                Text(
                  "Delivery Address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.65,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 6,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Address :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Icon(Icons.edit_square)
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "216 St Paul's Rd, London N1 2LL, UK Contact :  +44-784232",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            )),
                        Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 6,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          width: 2, color: Colors.black)),
                                  child: const Icon(Icons.add)),
                            )),
                      ],
                    )),
              ],
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Shopping List",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 170,
                          width: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/images/sneakers 1.jpg',
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Women’s Casual Wear",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Text("Variations: "),
                                const SizedBox(width: 5),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          width: 1, color: Colors.black)),
                                  child: const Center(child: Text("Black")),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          width: 1, color: Colors.black)),
                                  child: const Center(child: Text("Red")),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              children: [
                                Text(
                                  "4.8",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.star, size: 14, color: Colors.amber),
                                Icon(Icons.star, size: 14, color: Colors.amber),
                                Icon(Icons.star, size: 14, color: Colors.amber),
                                Icon(Icons.star, size: 14, color: Colors.amber),
                                Icon(Icons.star_half,
                                    size: 14, color: Colors.amber),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            width: 1, color: Colors.grey)),
                                    child: const Center(
                                      child: Text("\$ 34.00",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24)),
                                    )),
                                const SizedBox(width: 15),
                                const Column(
                                  children: [
                                    Text(
                                      '33% off',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '\$ 64.00',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total order (1) :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text("\$ 34.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
