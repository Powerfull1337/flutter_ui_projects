import 'package:flutter/material.dart';
import 'package:flux_store_app/main/models/order.dart';
import 'package:flux_store_app/main/models/timeline.dart';
import 'package:flux_store_app/main/widgets/time_line_widget.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key, required this.order});

  final Order order;

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
              padding: EdgeInsets.only(left: 10),
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
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "Track order",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 51),
            RichText(
              text: TextSpan(
                  text: "Delivered on ",
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                        text: "15.05.21", style: TextStyle(color: Colors.black))
                  ]),
            ),
            SizedBox(height: 16),
            RichText(
              text: TextSpan(
                  text: "Tracking Number: ",
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                        text: "${order.trackingNumber}",
                        style: TextStyle(color: Colors.black))
                  ]),
            ),
            SizedBox(height: 43),
            SizedBox(
              height: 350,
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return TimelineTile(
                    event: event,
                    isFirst: index == 0,
                    isLast: index == events.length - 1,
                  );
                },
              ),
            ),
            SizedBox(height: 58),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      size: 60,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Don`t forget to rate",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Rate product to get 5 points for collect",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            ...List.generate(
                              5,
                              (index) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.grey.withOpacity(0.5),
                                );
                              },
                            )
                          ],
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