import 'package:flutter/material.dart';
import 'package:flux_store_app/main/widgets/voucher_coupon.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        centerTitle: true,
        title: const Text("Voucher"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            VoucherCard(
              discount: '50%',
              title: 'Black Friday',
              description: 'Sale off 50%',
              code: 'fridaysale',
              expiryDate: '20 Dec',
              discountColor: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            VoucherCard(
              discount: '40%',
              title: 'Black Friday',
              description: 'Sale off 40%',
              code: 'fridaysale',
              expiryDate: '11 Dec',
              discountColor: Colors.black54,
            ),
            SizedBox(
              height: 20,
            ),
            VoucherCard(
              discount: '15%',
              title: 'Black Friday',
              description: 'Sale off 15%',
              code: 'fridaysale',
              expiryDate: '20 Dec',
              discountColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
