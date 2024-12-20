import 'package:flutter/material.dart';

import './profile_page.dart';
import './wishlist_movie_page.dart';
import './mobile_home_page.dart';
import './web_home_page.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({super.key});
  static String routeName = '/main-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 649) {
            return const MobileHomePage();
          }
          if (constraints.maxWidth <= 953) {
            return const WebHomePage(gridCount: 2);
          } else {
            return const WebHomePage(gridCount: 3);
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacementNamed(
                context, WishlistMoviePage.routeName);
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, ProfilePage.routeName);
          }
        },
      ),
    );
  }
}
