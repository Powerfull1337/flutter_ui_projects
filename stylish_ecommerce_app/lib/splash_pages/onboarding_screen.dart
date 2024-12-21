import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/app_color.dart';
import 'package:stylish_ecommerce_app/auth_pages/login_page.dart';
import 'package:stylish_ecommerce_app/splash_pages/splash_page_one.dart';
import 'package:stylish_ecommerce_app/splash_pages/splash_page_three.dart';
import 'package:stylish_ecommerce_app/splash_pages/splash_page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "${_currentPage + 1}",
                  style: const TextStyle(color: Colors.black),
                ),
                const Text(
                  "/3",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              SplashPageOne(),
              SplashPageTwo(),
              SplashPageThree(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: _currentPage != 0,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: TextButton(
                    onPressed: () {
                      _controller.previousPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      );
                    },
                    child: const Text(
                      "Prev",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  effect: const ExpandingDotsEffect(
                      dotColor: Colors.black,
                      activeDotColor: Colors.grey,
                      dotHeight: 12,
                      dotWidth: 12),
                  controller: _controller,
                  count: 3,
                ),
                _currentPage == 2
                    ? TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOutCirc,
                          );
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
