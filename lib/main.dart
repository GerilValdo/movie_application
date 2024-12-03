import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/movies_new_releases.dart';
import './providers/movies_popular.dart';

import './pages/new_releases_movie_page.dart';
import './pages/sign_up_page.dart';
import './pages/home_page.dart';
import './pages/detail_movie_page.dart';
import './pages/popular_movie_page.dart';
import './pages/wishlist_movie_page.dart';
import './pages/profile_page.dart';
import './pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MoviesNewReleases(),
        ),
        ChangeNotifierProvider(
          create: (context) => MoviesPopular(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            titleMedium: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        home: HomePage(),
        routes: {
          SignUpPage.routeName: (context) => SignUpPage(),
          LoginPage.routeName: (context) => LoginPage(),
          HomePage.routeName: (context) => HomePage(),
          DetailMoviePage.routeName: (context) => DetailMoviePage(),
          PopularMoviePage.routeName: (context) => PopularMoviePage(),
          NewReleasesMoviePage.routeName: (context) => NewReleasesMoviePage(),
          WishlistMoviePage.routeName: (context) => WishlistMoviePage(),
          ProfilePage.routeName: (context) => ProfilePage(),
        },
      ),
    );
  }
}
