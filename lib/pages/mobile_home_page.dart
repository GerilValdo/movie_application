import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/movies_new_releases.dart';
import '../providers/movies_popular.dart';
import '../widgets/row_new_releases_movie.dart';
import '../widgets/column_popular_movies.dart';
import '../pages/new_releases_movie_page.dart';
import '../pages/popular_movie_page.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final listDataMovieNewReleases = Provider.of<MoviesNewReleases>(context);
    final dataMovieNewReleases = listDataMovieNewReleases.allMovie;

    final listDataMoviePopular = Provider.of<MoviesPopular>(context);
    final dataMoviePopular = listDataMoviePopular.allMovie;
    return Container(
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
          ListTile(
            leading: SizedBox(
              height: 80,
              width: 80,
              child: CircleAvatar(
                backgroundImage: const Image(
                  image: AssetImage('assets/image/photo_profile.jpg'),
                  fit: BoxFit.contain,
                ).image,
              ),
            ),
            title: const Text(
              'Welcome',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              'Geril Valdo',
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
                  Navigator.pushNamed(context, NewReleasesMoviePage.routeName);
                },
                child: const Text('see more')),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ChangeNotifierProvider.value(
                  value: dataMovieNewReleases[index],
                  child: const RowNewReleaseMovie(),
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
                  child: const ColumnPopularMovies(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
