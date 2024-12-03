import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/movies_new_releases.dart';
import '../providers/movies_popular.dart';
import '../widgets/row_new_releases_movie.dart';
import '../widgets/column_popular_movies.dart';

import './new_releases_movie_page.dart';
import './profile_page.dart';
import './wishlist_movie_page.dart';
import './popular_movie_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    final listDataMovieNewReleases = Provider.of<MoviesNewReleases>(context);
    final dataMovieNewReleases = listDataMovieNewReleases.allMovie;

    final listDataMoviePopular = Provider.of<MoviesPopular>(context);
    final dataMoviePopular = listDataMoviePopular.allMovie;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple.shade900, Colors.purple.shade500],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 25, left: 5, right: 5, bottom: 0),
          children: [
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
              ),
              title: Text(
                'Welcome',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'account name',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                'New Releases',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, NewReleasesMoviePage.routeName);
                  },
                  child: const Text('see more')),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ChangeNotifierProvider.value(
                    value: dataMovieNewReleases[index],
                    child: RowNewReleaseMovie(),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: Text(
                'Popular',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, PopularMoviePage.routeName);
                  },
                  child: const Text('see more')),
            ),
            const SizedBox(height: 15),
            SizedBox(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ChangeNotifierProvider.value(
                    value: dataMoviePopular[index],
                    child: ColumnPopularMovies(),
                  );
                },
              ),
            )
          ],
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
