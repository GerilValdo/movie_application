import 'package:flutter/material.dart';

import './detail_movie_page.dart';
import './profile_page.dart';
import './home_page.dart';

// import '../widgets/bottom_navigation_bar.dart';

class WishlistMoviePage extends StatelessWidget {
  const WishlistMoviePage({super.key});
  static String routeName = '/wishlist-movie-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple.shade900, Colors.purple.shade500],
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8),
              height: 150,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.3),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, DetailMoviePage.routeName);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image/bg_start_page.jpg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Judul Film'),
                          Row(
                            children: [
                              Icon(Icons.star_rounded),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text('9/10'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text('2h 50m'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_border_outlined),
                      color: Colors.white,
                      iconSize: 35,
                    ),
                  ],
                ),
              ),
            );
          },
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
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, HomePage.routeName);
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, ProfilePage.routeName);
          }
        },
      ),
    );
  }
}
