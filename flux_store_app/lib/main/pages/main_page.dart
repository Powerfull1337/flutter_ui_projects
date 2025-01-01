import 'package:flutter/material.dart';
import 'package:flux_store_app/main/pages/all_orders_page.dart';
import 'package:flux_store_app/main/pages/home_page.dart';
import 'package:flux_store_app/main/pages/discover_page.dart';
import 'package:flux_store_app/main/pages/notification_page.dart';
import 'package:flux_store_app/main/pages/profile_page.dart';
import 'package:flux_store_app/main/pages/setting_page.dart';
import 'package:flux_store_app/main/widgets/drawer_tile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPageIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLightMode = true;
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
      key: _scaffoldKey,
      drawer: _buildDrawer(context),
      appBar: _buildAppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() => _selectedPageIndex = value);
        },
        children: [
          HomePage(),
          DiscoverPage(),
          AllOrdersPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 177, 165, 165),
            currentIndex: _selectedPageIndex,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black,
            onTap: _selectPage,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.badge),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              )
            ]),
      ),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: MediaQuery.of(context).size.width * 0.75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          children: [
            SizedBox(height: 68),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/images/intro/welcome.png',
                  ),
                  radius: 30,
                ),
                SizedBox(width: 17),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sunie Pham",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6),
                    Text("suniex@gmail.com",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                  ],
                )
              ],
            ),
            SizedBox(height: 71),
            DrawerTile(
              title: Text("Home Page"),
              icon: Icons.home,
              onTap: () => _selectPage(0),
              isSelected: _selectedPageIndex == 0,
            ),
            DrawerTile(
              title: Text("Discover"),
              icon: Icons.search,
              onTap: () => _selectPage(1),
              isSelected: _selectedPageIndex == 1,
            ),
            DrawerTile(
              title: Text("My Order"),
              icon: Icons.badge,
              onTap: () => _selectPage(2),
              isSelected: _selectedPageIndex == 2,
            ),
            DrawerTile(
              title: Text("Profile"),
              icon: Icons.person,
              onTap: () => _selectPage(3),
              isSelected: _selectedPageIndex == 3,
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("OTHER",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            SizedBox(height: 24),
            DrawerTile(
              title: Text("Settings"),
              icon: Icons.settings,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              isSelected: false,
            ),
            DrawerTile(
              title: Text("Support"),
              icon: Icons.support_agent_outlined,
              onTap: () {},
              isSelected: _selectedPageIndex == 5,
            ),
            DrawerTile(
              title: Text("About us"),
              icon: Icons.info,
              onTap: () {},
              isSelected: _selectedPageIndex == 6,
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLightMode = true;
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color:
                                isLightMode ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: isLightMode
                                ? [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ]
                                : [],
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.light_mode,
                                  color:
                                      isLightMode ? Colors.black : Colors.grey),
                              SizedBox(width: 4),
                              Text(
                                'Light',
                                style: TextStyle(
                                    color: isLightMode
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLightMode = false;
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: !isLightMode
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: !isLightMode
                                ? [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ]
                                : [],
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.dark_mode,
                                  color: !isLightMode
                                      ? Colors.black
                                      : Colors.grey),
                              SizedBox(width: 4),
                              Text(
                                'Dark',
                                style: TextStyle(
                                    color: !isLightMode
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    String title;
    switch (_selectedPageIndex) {
      case 0:
        title = "Gemstore";
        break;
      case 1:
        title = "Discover";
        break;
      case 2:
        title = "My Orders";
        break;
      case 3:
        title = "Profile";
        break;
      default:
        title = "";
        break;
    }

    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: IconButton(
          splashRadius: 16,
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: IconButton(
            splashRadius: 16,
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
            },
          ),
        ),
      ],
      centerTitle: true,
    );
  }
}
