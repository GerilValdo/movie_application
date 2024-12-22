import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/genre_movie_list.dart';
import '../providers/movies_new_releases.dart';
import '../providers/movies_popular.dart';

class DetailMoviePage extends StatefulWidget {
  const DetailMoviePage({super.key});
  static String routeName = '/detail-movie-page';

  @override
  State<DetailMoviePage> createState() => _DetailMoviePageState();
}

class _DetailMoviePageState extends State<DetailMoviePage> {
  @override
  Widget build(BuildContext context) {
    final movieId = ModalRoute.of(context)!.settings.arguments as int;
    final dataMovieNewReleases =
        Provider.of<MoviesNewReleases>(context).findById(movieId);
    dynamic dataMoviePopular =
        Provider.of<MoviesPopular>(context).findById(movieId);
    final selectedMovie = dataMoviePopular ?? dataMovieNewReleases;
    final genreProvider = Provider.of<GenreMovieList>(context);
    final matchingGenre = genreProvider.getGenreByIds(selectedMovie.genreMovie);

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
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(selectedMovie.imageDetailMovieUrl),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.purple.shade800.withOpacity(1)
                        ],
                        stops: const [0.6, 1],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(selectedMovie.titleMovie,
                            style: Theme.of(context).textTheme.titleMedium),
                        Wrap(
                          spacing: 8,
                          children: matchingGenre.map((genre) {
                            int index = matchingGenre.indexOf(genre);
                            return Text(index < matchingGenre.length - 1
                                ? '${genre['name']} \u2022'
                                : genre['name']);
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                AppBar(
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  toolbarHeight: 120,
                  backgroundColor: Colors.transparent,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                selectedMovie.statusWishlist();
                              });
                            },
                            icon: (selectedMovie.isWishlist)
                                ? const Icon(
                                    Icons.bookmark,
                                    color: Colors.yellow,
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.bookmark_border_outlined,
                                    color: Colors.yellow,
                                    size: 30,
                                  )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'IMDB Rating',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.yellow,
                          size: 25,
                        ),
                        const SizedBox(width: 5),
                        Text(selectedMovie.ratingMovie.toStringAsFixed(1)),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Duration'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.access_time_filled,
                          color: Colors.yellow,
                          size: 25,
                        ),
                        const SizedBox(width: 5),
                        Text(selectedMovie.movieDuration),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Release Date'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: Colors.yellow,
                          size: 25,
                        ),
                        const SizedBox(width: 5),
                        Text(selectedMovie.releaseDate),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Text(
                    'Sinopsis',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    selectedMovie.description,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
