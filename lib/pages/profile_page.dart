import 'package:flutter/material.dart';

import './home_page.dart';
import './wishlist_movie_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static String routeName = '/profile-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple.shade900, Colors.purple.shade500],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              CircleAvatar(
                radius: 80,
              ),
              Text(
                'Nama User',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'email User',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white.withOpacity(0.3),
                ),
                child: ListTile(
                  onTap: () => Navigator.pushReplacementNamed(
                      context, WishlistMoviePage.routeName),
                  minTileHeight: 35,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  leading: Icon(
                    Icons.bookmark_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Wishlist',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white.withOpacity(0.3),
                ),
                child: ListTile(
                  minTileHeight: 35,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Wishlist'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, HomePage.routeName);
          } else if (index == 1) {
            Navigator.pushReplacementNamed(
                context, WishlistMoviePage.routeName);
          }
        },
      ),
    );
  }
}
