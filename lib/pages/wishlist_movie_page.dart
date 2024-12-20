import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/movies_new_releases.dart';
import '../providers/movies_popular.dart';
import '../pages/main_screen.dart';
import './detail_movie_page.dart';
import './profile_page.dart';

class WishlistMoviePage extends StatelessWidget {
  const WishlistMoviePage({super.key});
  static String routeName = '/wishlist-movie-page';

  @override
  Widget build(BuildContext context) {
    final moviesNewReleasesProvider =
        Provider.of<MoviesNewReleases>(context, listen: true);
    final moviesPopularProvider =
        Provider.of<MoviesPopular>(context, listen: true);
    final newReleasesWishlistMovies = moviesNewReleasesProvider.wishlistMovies;
    final popularWishlistMovies = moviesPopularProvider.wishlistMovies;
    final wishlistMovies = [
      ...newReleasesWishlistMovies,
      ...popularWishlistMovies
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: wishlistMovies.isEmpty
          ? Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple.shade900, Colors.purple.shade500],
                ),
              ),
              child: Center(
                child: Text(
                  'No Movies in Wishlist',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            )
          : Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple.shade900, Colors.purple.shade500],
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: wishlistMovies.length,
                itemBuilder: (context, index) {
                  final movie = wishlistMovies[index];
                  return Container(
                    padding: const EdgeInsets.all(8),
                    height: 210,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, DetailMoviePage.routeName,
                            arguments: movie.id);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(movie.imagePosterMovieUrl),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.titleMovie,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.access_time,
                                      color: Colors.yellow,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(movie.movieDuration),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star_rounded,
                                      color: Colors.yellow,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                          movie.ratingMovie.toStringAsFixed(1)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        alignment: Alignment.center,
                                        title: const Center(
                                            child: Text('Attention!')),
                                        contentTextStyle: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        content: const Text(
                                            'Are you sure to delete this Movie?'),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                if (newReleasesWishlistMovies
                                                    .contains(movie)) {
                                                  moviesNewReleasesProvider
                                                      .removeFromWishlist(
                                                          movie);
                                                } else if (popularWishlistMovies
                                                    .contains(movie)) {
                                                  moviesPopularProvider
                                                      .removeFromWishlist(
                                                          movie);
                                                }
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Yes')),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('No')),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 25,
                                )),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, MainScreenPage.routeName);
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, ProfilePage.routeName);
          }
        },
      ),
    );
  }
}
