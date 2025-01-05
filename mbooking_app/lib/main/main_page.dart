import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mbooking_app/app_color.dart';
import 'package:mbooking_app/main/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPageIndex = 0;
  final _pageController = PageController();

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() => _selectedPageIndex = value);
        },
        children: const [
          HomePage(),
          Center(
            child: Text("data"),
          ),
          Center(
            child: Text("data"),
          ),
          Center(
            child: Text("data"),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          onTap: _selectPage,
          unselectedItemColor: Color(0xFFCCCCCC),
          currentIndex: _selectedPageIndex,
          selectedItemColor: AppColor.primaryOrangeColor,
          backgroundColor: Color(0xFF262626),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.ticket), label: "Ticket"),
            BottomNavigationBarItem(icon: Icon(Iconsax.camera), label: "Movie"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
