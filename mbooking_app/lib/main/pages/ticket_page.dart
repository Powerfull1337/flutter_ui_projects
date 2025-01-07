
import 'package:flutter/material.dart';
import 'package:mbooking_app/main/models/film.dart';
import 'package:mbooking_app/widgets/barcode_widget.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key, required this.film});
  final Film film;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text(
          "My Ticket",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 16, 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(13.36),
                          child: Image.asset(
                            film.imagePath,
                            width: 125,
                            height: 177,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          film.title,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.timer),
                            const SizedBox(width: 10),
                            Text(film.time,
                                style: const TextStyle(color: Colors.black))
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.generating_tokens),
                            const SizedBox(width: 10),
                            Text(
                                film.genres
                                    .map((genre) => genreToString(genre))
                                    .join(', '),
                                style: const TextStyle(color: Colors.black))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 44,
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("14h 15'",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(height: 8),
                                  Text("10.12.2022",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.event_seat_rounded,
                                size: 44,
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Section 4",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(height: 8),
                                  Text("Seat H7, H8",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Icon(Icons.attach_money_outlined),
                    SizedBox(width: 10),
                    Text(
                      "210.000 VND",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      children: [Icon(Icons.location_on)],
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Vincom Ocean Park",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(width: 10),
                              Image.asset(
                                'assets/images/cinemacgv.png',
                                height: 20,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "4th floor, Vincom Ocean Park, Da Ton, Gia Lam, Ha Noi",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Icon(Icons.note),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Show this QR code to the ticket counter to receive your ticket",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const DottedLineWithCircles(),
                const SizedBox(height: 40),
                const BarcodeWidget(
                  data: '78889377726',
                ),
                const SizedBox(height: 16),
                const Text(
                  "Order ID: 78889377726",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DottedLineWithCircles extends StatelessWidget {
  const DottedLineWithCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        const Row(
          children: [
            Expanded(child: DottedLine()),
          ],
        ),
        Positioned(
          left: -20,
          child: CustomPaint(
            size: const Size(40, 40),
            painter: HalfCirclePainter(),
          ),
        ),
        Positioned(
          right: -20,
          child: CustomPaint(
            size: const Size(40, 40),
            painter: HalfCirclePainter(isLeft: false),
          ),
        ),
      ],
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  final bool isLeft;

  HalfCirclePainter({this.isLeft = true});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final Offset center = Offset(
      isLeft ? size.width : 0,
      size.height / 2,
    );
    final double radius = size.height / 2;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class DottedLine extends StatelessWidget {
  const DottedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 6.0;
        const dashHeight = 2.0;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return const SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            );
          }),
        );
      },
    );
  }
}
