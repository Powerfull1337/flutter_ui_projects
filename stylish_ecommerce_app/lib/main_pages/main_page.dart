import 'package:flutter/material.dart';
//import 'package:stylish_ecommerce_app/main_pages/detail_page.dart';
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
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          BottomNavigationBar(
            currentIndex: _selectedPageIndex,
            type: BottomNavigationBarType.fixed,
            onTap: _openPage,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: _buildCartIcon(),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: 'Setting',
              ),
            ],
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _selectedPageIndex = index);
        },
        children: const [
          HomePage(),
          FavoritePage(),
         // DetailPage(product: ,),
          Center(child: Text('Search Page')),
          Center(child: Text('Settings Page')),
        ],
      ),
    );
  }

  Widget _buildCartIcon() {
    final isSelected = _selectedPageIndex == 2;
    return Transform.translate(
      offset: const Offset(0, -5),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            if (isSelected)
              const BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                spreadRadius: 2,
              ),
          ],
        ),
        child: Icon(
          Icons.shopping_cart,
          size: 32, 
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  void _openPage(int index) {
    setState(() => _selectedPageIndex = index);
    _pageController.jumpToPage(index);
  }
}
