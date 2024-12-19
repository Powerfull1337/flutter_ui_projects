import 'package:aspen_travel_mini_app/colors.dart';
import 'package:aspen_travel_mini_app/widgets/search_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SearchField(),
              ),
              SizedBox(
                  height: 30,
                  child: GridView.builder(
                    itemBuilder: (context, index) {

                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
