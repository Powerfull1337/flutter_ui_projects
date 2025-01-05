import 'dart:async'; // Для використання таймера
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/main/models/film.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  Timer? _timer;
  int _currentPage = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   _timer = Timer.periodic(Duration(seconds: 6), (Timer timer) {
  //     if (_currentPage < listOfFilms.length - 1) {
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0;
  //     }
  //     _pageController.animateToPage(
  //       _currentPage,
  //       duration: Duration(milliseconds: 400),
  //       curve: Curves.easeInOut,
  //     );
  //   });
  // }

  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Angelina 👋",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 40,
                        ),
                        Positioned(
                          right: 5,
                          top: 5,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 5,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Color(0xFF8C8C8C),
                      fontSize: 16,
                    ),
                    filled: true,
                    fillColor: Color(0xFF1C1C1C),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Now playing",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                              color: AppColor.primaryOrangeColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColor.primaryOrangeColor,
                          size: 24,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 560,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      final film = listOfFilms[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                film.imagePath,
                                height: 440,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 16),
                            FittedBox(
                              child: Text(
                                film.title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${film.time} • ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFBFBFBF)),
                                ),
                                Text(
                                  film.genres
                                      .map((genre) => genreToString(genre))
                                      .join(', '),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFBFBFBF),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "${film.rating}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "(${film.reviews})",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFBFBFBF)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 24),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 5,
                  axisDirection: Axis.horizontal,
                  effect: const SlideEffect(
                    dotWidth: 8,
                    dotHeight: 8,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.amber,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cooming soon",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                              color: AppColor.primaryOrangeColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColor.primaryOrangeColor,
                          size: 24,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24),
                Container(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfFilms.length,
                    itemBuilder: (context, index) {
                      final film = listOfFilms[index];
                      String formatedDate =
                          DateFormat('dd.MM.yyy').format(film.premier);
                      return SizedBox(
                        height: 330,
                        width: 175,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  film.imagePath,
                                  width: double.infinity,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                film.title,
                                style: TextStyle(
                                    color: AppColor.primaryOrangeColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.camera_alt,
                                    size: 20,
                                    color: Color(0xFFDEDEDE),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    (film.genres.length > 2
                                        ? film.genres
                                                .take(2)
                                                .map((genre) =>
                                                    genreToString(genre))
                                                .join(', ') +
                                            ', ...'
                                        : film.genres
                                            .map(
                                                (genre) => genreToString(genre))
                                            .join(', ')),
                                    style: TextStyle(color: Color(0xFFDEDEDE)),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.date_range,
                                    size: 20,
                                    color: Color(0xFFDEDEDE),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    formatedDate,
                                    style: TextStyle(color: Color(0xFFDEDEDE)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Promo & Discount",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                              color: AppColor.primaryOrangeColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColor.primaryOrangeColor,
                          size: 24,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 230,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset('assets/images/promo.jpg',
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
