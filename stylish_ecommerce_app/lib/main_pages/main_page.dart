import 'package:flutter/material.dart';
import 'package:stylish_ecommerce_app/main_pages/favorite_page.dart';
import 'package:stylish_ecommerce_app/main_pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _selectedPageIndex = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: const Icon(Icons.shopping_cart),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        onTap: _openPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Setting',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedPageIndex = index);
        },
        children: const [
          FavoritePage(),
          HomePage(),
          Center(child: Text('Search Page')),
          Center(child: Text('Settings Page')),
        ],
      ),
    );
  }

  void _openPage(int index) {
    setState(() => _selectedPageIndex = index);
    _pageController.jumpToPage(index);
  }
}
