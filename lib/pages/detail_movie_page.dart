import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/movies_new_releases.dart';
import '../providers/movies_popular.dart';

class DetailMoviePage extends StatelessWidget {
  const DetailMoviePage({super.key});
  static String routeName = '/detail-movie-page';

  @override
  Widget build(BuildContext context) {
    final movieId = ModalRoute.of(context)!.settings.arguments as int;
    final dataMovieNewReleases =
        Provider.of<MoviesNewReleases>(context).findById(movieId);
    dynamic dataMoviePopular =
        Provider.of<MoviesPopular>(context).findById(movieId);
    final selectedMovie = dataMoviePopular ?? dataMovieNewReleases;

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
                        const Text('Mystery • Action'),
                      ],
                    ),
                  ),
                ),
                AppBar(
                  toolbarHeight: 120,
                  backgroundColor: Colors.transparent,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark_border_outlined,
                              color: Colors.white,
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
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: Colors.yellow,
                      size: 45,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IMDB Rating',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(selectedMovie.ratingMovie.toString()),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time_filled,
                      color: Colors.yellow,
                      size: 40,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Duration'),
                        Text(selectedMovie.movieDuration),
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
                  const SizedBox(height: 15),
                  Text(
                    'Actors',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 0.7,
                    ),
                    itemBuilder: (context, index) {
                      return const Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'Nama Actor',
                              softWrap: true,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      );
                    },
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
