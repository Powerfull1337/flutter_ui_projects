import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/main/models/film.dart';
import 'package:mbooking_app/main/pages/film_details_page.dart';
import 'package:mbooking_app/navigator.dart';
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

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 6), (Timer timer) {
      if (_currentPage < listOfFilms.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

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
                const Row(
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
                const SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search",
                    hintStyle: const TextStyle(
                      color: Color(0xFF8C8C8C),
                      fontSize: 16,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF1C1C1C),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 32),
                const Row(
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
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 560,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      final film = listOfFilms[index];
                      return GestureDetector(
                        onTap: () {
                          NavigationService().push(FilmDetailsPage(
                            film: film,
                          ));
                        },
                        child: Padding(
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
                              const SizedBox(height: 16),
                              FittedBox(
                                child: Text(
                                  film.title,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${film.time} • ",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFBFBFBF)),
                                  ),
                                  Text(
                                    film.genres
                                        .map((genre) => genreToString(genre))
                                        .join(', '),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFBFBFBF),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "${film.rating}",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "(${film.reviews})",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFBFBFBF)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
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
                const SizedBox(height: 32),
                const Row(
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
                const SizedBox(height: 24),
                SizedBox(
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
                                style: const TextStyle(
                                    color: AppColor.primaryOrangeColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.camera_alt,
                                    size: 20,
                                    color: Color(0xFFDEDEDE),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    (film.genres.length > 2
                                        ? '${film.genres.take(2).map((genre) => genreToString(genre)).join(', ')}, ...'
                                        : film.genres
                                            .map(
                                                (genre) => genreToString(genre))
                                            .join(', ')),
                                    style: const TextStyle(
                                        color: Color(0xFFDEDEDE)),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.date_range,
                                    size: 20,
                                    color: Color(0xFFDEDEDE),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    formatedDate,
                                    style: const TextStyle(
                                        color: Color(0xFFDEDEDE)),
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
                const Row(
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
                const SizedBox(height: 20),
                SizedBox(
                  height: 230,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset('assets/images/promo.jpg',
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Service",
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
                const SizedBox(height: 10),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listOfService.length,
                      itemBuilder: (context, index) {
                        final service = listOfService[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: SizedBox(
                            width: 82,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage(service.imagePath),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  service.title,
                                  style: const TextStyle(
                                      color: Color(0xFFF2F2F2),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Movie news",
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
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfNews.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 15),
                    itemBuilder: (context, index) {
                      final news = listOfNews[index];
                      return SizedBox(
                        height: 250,
                        width: 250,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                news.imagePath,
                                width: double.infinity,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              news.title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                    },
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

class Service {
  final String imagePath;
  final String title;
  Service({required this.imagePath, required this.title});
}

List<Service> listOfService = [
  Service(imagePath: 'assets/images/avengers.jpg', title: "Retal"),
  Service(imagePath: 'assets/images/venom.jpg', title: "Imax"),
  Service(imagePath: 'assets/images/quantumania.png', title: "4DX"),
  Service(imagePath: 'assets/images/avengers.jpg', title: "SweetBox"),
];

class News {
  final String title;
  final String imagePath;

  News({required this.title, required this.imagePath});
}

List<News> listOfNews = [
  News(imagePath: 'assets/images/avengers.jpg', title: "Retal"),
  News(imagePath: 'assets/images/venom.jpg', title: "Imax"),
  News(imagePath: 'assets/images/quantumania.png', title: "4DX"),
  News(imagePath: 'assets/images/avengers.jpg', title: "SweetBox"),
];
