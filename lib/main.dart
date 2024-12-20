import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/genre_movie_list.dart';
import './providers/movies_new_releases.dart';
import './providers/movies_popular.dart';

import './pages/main_screen.dart';
import './pages/new_releases_movie_page.dart';
import './pages/sign_up_page.dart';
import './pages/detail_movie_page.dart';
import './pages/popular_movie_page.dart';
import './pages/wishlist_movie_page.dart';
import './pages/profile_page.dart';
import './pages/login_page.dart';

void main() {
  runApp(const MyApp());
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
        ),
        ChangeNotifierProvider(
          create: (context) => GenreMovieList(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
            displayMedium: TextStyle(color: Colors.white),
            titleMedium: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        home: const MainScreenPage(),
        routes: {
          SignUpPage.routeName: (context) => const SignUpPage(),
          LoginPage.routeName: (context) => const LoginPage(),
          MainScreenPage.routeName: (context) => const MainScreenPage(),
          DetailMoviePage.routeName: (context) => const DetailMoviePage(),
          PopularMoviePage.routeName: (context) => const PopularMoviePage(),
          NewReleasesMoviePage.routeName: (context) =>
              const NewReleasesMoviePage(),
          WishlistMoviePage.routeName: (context) => const WishlistMoviePage(),
          ProfilePage.routeName: (context) => const ProfilePage(),
        },
      ),
    );
  }
}
