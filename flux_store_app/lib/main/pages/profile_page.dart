import 'package:flutter/material.dart';
import 'package:flux_store_app/main/pages/card_managment_page.dart';
import 'package:flux_store_app/main/pages/profile_settings.dart';
import 'package:flux_store_app/main/pages/voucher_page.dart';
import 'package:flux_store_app/main/pages/wishlist_page.dart';
import 'package:flux_store_app/main/widgets/settings_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
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
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileSettings()));
                  },
                  child: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(height: 58),
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  children: [
                    SettingsTile(
                      title: Text("Adress"),
                      icon: Icons.location_on,
                      onTap: () {},
                    ),
                    SettingsTile(
                      title: Text("Payment method"),
                      icon: Icons.payment,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CardManagmentPage()));
                      },
                    ),
                    SettingsTile(
                      title: Text("Voucher"),
                      icon: Icons.account_balance_wallet_rounded,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VoucherPage()));
                      },
                    ),
                    SettingsTile(
                      title: Text("My wishlsit"),
                      icon: Icons.favorite,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WishlistPage()));
                      },
                    ),
                    SettingsTile(
                      title: Text("Rate this app"),
                      icon: Icons.star,
                      onTap: () {},
                    ),
                    SettingsTile(
                      title: Text("Log out"),
                      icon: Icons.logout,
                      onTap: () {},
                      isTrailing: false,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
