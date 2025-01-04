import 'package:flutter/material.dart';
import 'package:flux_store_app/main/models/order.dart';
import 'package:intl/intl.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.order, this.onTap});

  final Order order;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    String formatedDate = DateFormat('dd/MM/yyyy').format(order.date);

    Color statusColor;

    switch (order.status) {
      case "DELIVERED":
        statusColor = const Color(0xFF009254);
        break;
      case "CANCELLED":
        statusColor = const Color(0xFFC50000);
        break;
      case "PENDING":
        statusColor = const Color(0xFFCF6212);
        break;
      default:
        statusColor = Colors.black;
        break;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
      child: Container(
        height: 187,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(4, 4),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 18, 12, 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order #${order.orderId}",
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    formatedDate,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF43484B)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Text(
                    "Tracking number: ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF43484B)),
                  ),
                  Text(
                    order.trackingNumber,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 13),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Quantity: ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF43484B),
                        ),
                      ),
                      TextSpan(
                        text: "${order.quantity}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Subtotal: ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF43484B),
                        ),
                      ),
                      TextSpan(
                        text: "\$${order.subtotal}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    order.status,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: statusColor),
                  ),
                  if (order.status == "DELIVERED" || order.status == "PENDING")
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(17.5)),
                        padding:
                            const EdgeInsets.symmetric(vertical: 7, horizontal: 25),
                        child: const Center(
                          child: Text("Details"),
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
