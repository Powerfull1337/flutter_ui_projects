import 'package:flutter/material.dart';

class DeliveryAddressPage extends StatefulWidget {
  const DeliveryAddressPage({super.key});

  @override
  State<DeliveryAddressPage> createState() => _DeliveryAddressPageState();
}

int selectedShipping = 0;
bool isBoxChecked = false;

class _DeliveryAddressPageState extends State<DeliveryAddressPage> {
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
        title: const Text("Delivery address"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 30),
            _buildRadioDeliveryButtonContainer(0, 'My Home',
                'SBI Building, street 3, Software Park', Icons.home),
            const SizedBox(
              height: 40,
            ),
            _buildRadioDeliveryButtonContainer(
                1,
                'My Office',
                'SBI Building, street 1, Software Park',
                Icons.local_post_office_outlined),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildRadioDeliveryButtonContainer(
      int index, String text, String address, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedShipping = index;
        });
      },
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 4),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
          child: Column(
            children: [
              Row(
                children: [
                  Radio<int>(
                      value: index,
                      groupValue: selectedShipping,
                      onChanged: (int? newValue) {
                        setState(() {
                          selectedShipping = newValue!;
                        });
                      },
                      activeColor: Colors.black),
                  Icon(
                    icon,
                    size: 40,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Send to"),
                      Text(text),
                    ],
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.red,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Text(
                address,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
