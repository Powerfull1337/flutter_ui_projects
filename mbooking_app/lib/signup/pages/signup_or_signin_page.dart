import 'package:flutter/material.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/navigator.dart';
import 'package:mbooking_app/signup/pages/signup_page.dart';
import 'package:mbooking_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignupOrSigninPage extends StatefulWidget {
  const SignupOrSigninPage({super.key});

  @override
  _SignupOrSigninPageState createState() => _SignupOrSigninPageState();
}

class _SignupOrSigninPageState extends State<SignupOrSigninPage> {
  final PageController _pageController = PageController();
  final List<String> _images = [
    'assets/images/avengers.jpg',
    'assets/images/avatar.jpg',
    'assets/images/venom.jpg',
  ];
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              _buildAppBar(context),
              const SizedBox(height: 80),
              SizedBox(
                height: 350,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          _images[index],
                          height: 329,
                          width: 329,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 33),
              const Text(
                "MBooking hello!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Enjoy your favorite movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              SmoothPageIndicator(
                controller: _pageController,
                count: _images.length,
                axisDirection: Axis.horizontal,
                effect: const SlideEffect(
                  dotWidth: 8,
                  dotHeight: 8,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.amber,
                ),
              ),
              const SizedBox(height: 20),
               CustomButton(
                text: "Sign In",
              ),
              const SizedBox(height: 16),
              CustomButton(
                onTap: () {
                  NavigationService().push(const SignupPage());
                },
                text: "Sign Up",
                isBorder: true,
                colorText: Colors.white,
                color: Colors.black,
              ),
              const SizedBox(height: 32),
              const Text(
                "By sign in or sign up, you agree to our Terms of Service and Privacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SFProDisplay',
                  color: Color(0xFFB3B3B3),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/logo.png'),
        GestureDetector(
          onTap: () {
            _buildShowBottomSheetSelectLanguage(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE6E6E6)),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                const Icon(Icons.translate, color: Color(0xFFE6E6E6)),
                const SizedBox(width: 5),
                Text(
                  selectedLanguage,
                  style: const TextStyle(color: Color(0xFFE6E6E6)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> _buildShowBottomSheetSelectLanguage(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1A1A1A),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Choose language",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Which language do you want to use?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "English",
                        style: TextStyle(
                          color: selectedLanguage == "English"
                              ? AppColor.primaryOrangeColor
                              : Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Transform.scale(
                        scale: 1.5,
                        child: Radio<String>(
                          value: 'English',
                          groupValue: selectedLanguage,
                          onChanged: (value) {
                            setModalState(() {
                              selectedLanguage = value!;
                            });
                            setState(() {});
                          },
                          activeColor: Colors.amber,
                        ),
                      ),
                    ),
                    const Divider(color: Colors.white54, height: 0.1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Vietnamese",
                        style: TextStyle(
                          color: selectedLanguage == "Vietnamese"
                              ? AppColor.primaryOrangeColor
                              : Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Transform.scale(
                        scale: 1.5,
                        child: Radio<String>(
                          value: 'Vietnamese',
                          groupValue: selectedLanguage,
                          onChanged: (value) {
                            setModalState(() {
                              selectedLanguage = value!;
                            });
                            setState(() {});
                          },
                          activeColor: Colors.amber,
                        ),
                      ),
                    ),
                    const SizedBox(height: 132),
                    CustomButton(
                      text: "Use $selectedLanguage",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
