import 'package:flutter/material.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/main/models/film.dart';
import 'package:mbooking_app/main/pages/payment_page.dart';
import 'package:mbooking_app/navigator.dart';
import 'package:mbooking_app/widgets/custom_button.dart';

class SeatSelectionPage extends StatefulWidget {
  const SeatSelectionPage({super.key, required this.film});
  final Film film;
  @override
  _SeatSelectionPageState createState() => _SeatSelectionPageState();
}

class _SeatSelectionPageState extends State<SeatSelectionPage> {
  final int rows = 8;
  final int columns = 13;

  List<List<String>> seats = List.generate(
    8,
    (row) => List.generate(
      13,
      (col) => (col + 1) % 6 == 0 ? 'Reserved' : 'Available',
    ),
  );

  int selectedDateIndex = 0;
  int selectedTimeIndex = 0;

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
          "Select seat",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 300,
                    height: 4,
                    color: const Color(0xFFFFD700),
                  ),
                  ClipPath(
                    clipper: TrapezoidClipper(),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFFFD700),
                            Colors.black,
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: columns,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                      ),
                      itemCount: rows * columns,
                      itemBuilder: (context, index) {
                        int row = index ~/ columns;
                        int col = index % columns;
                        String seatStatus = seats[row][col];

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (seatStatus == 'Available') {
                                seats[row][col] = 'Selected';
                              } else if (seatStatus == 'Selected') {
                                seats[row][col] = 'Available';
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: seatStatus == 'Available'
                                  ? const Color(0xFF1C1C1C)
                                  : seatStatus == 'Reserved'
                                      ? const Color(0xFF261D08)
                                      : Colors.yellow,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '${String.fromCharCode(65 + row)}${col + 1}',
                              style: TextStyle(
                                  color: seatStatus == 'Available'
                                      ? const Color(0xFFBFBFBF)
                                      : seatStatus == 'Reserved'
                                          ? AppColor.primaryOrangeColor
                                          : Colors.black,
                                  fontSize: 12),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const LegendWidget(),
                  const SizedBox(height: 38),
                  const Text(
                    "Select Date & Time",
                    style: TextStyle(
                        color: Color(0xFFF2F2F2),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 110,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 31,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedDateIndex = index;
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Container(
                                height: 100,
                                width: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: index == selectedDateIndex
                                        ? AppColor.primaryOrangeColor
                                        : const Color(0xFF1C1C1C)),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15),
                                    Text(
                                      "Dec",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: index == selectedDateIndex
                                              ? Colors.black
                                              : const Color(0xFFF2F2F2)),
                                    ),
                                    const SizedBox(height: 17),
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index == selectedDateIndex
                                              ? const Color(0xFF1D1D1D)
                                              : const Color(0xFF3B3B3B)),
                                      child: Center(
                                        child: Text(
                                          "${index + 1}",
                                          style: const TextStyle(
                                              color: Color(0xFFF2F2F2)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 50,
                    child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 15),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTimeIndex = index;
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(38),
                                    color: index == selectedTimeIndex
                                        ? const Color(0xFF261D08)
                                        : const Color(0xFF1C1C1C),
                                    border: index == selectedTimeIndex
                                        ? Border.all(
                                            color: AppColor.primaryOrangeColor)
                                        : null),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 8),
                                child: Center(
                                  child: Text(
                                    "${9 + index} : ${10 + index * 5}",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFF2F2F2)),
                                  ),
                                )),
                          );
                        }),
                  ),
                  const SizedBox(height: 30),
                  const Divider(),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                    color: Color(0xFFF2F2F2),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "210.000 VND",
                                style: TextStyle(
                                    color: AppColor.primaryOrangeColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 56),
                        Expanded(
                            child: CustomButton(
                          text: "Buy Ticket",
                          onTap: () {
                            NavigationService().push(PaymentPage(
                              film: widget.film,
                            ));
                          },
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.8, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class LegendWidget extends StatelessWidget {
  const LegendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildLegendItem(const Color(0xFF1C1C1C), 'Available'),
        _buildLegendItem(const Color(0xFF261D08), 'Reserved'),
        _buildLegendItem(AppColor.primaryOrangeColor, 'Selected'),
      ],
    );
  }

  Widget _buildLegendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
