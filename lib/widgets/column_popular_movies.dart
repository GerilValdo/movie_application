import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/movie.dart';
import '../pages/detail_movie_page.dart';

class ColumnPopularMovies extends StatelessWidget {
  const ColumnPopularMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dataMovie = Provider.of<Movie>(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailMoviePage.routeName,
            arguments: dataMovie.id);
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(dataMovie.imagePosterMovieUrl),
                    ),
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
                      dataMovie.titleMovie,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 18,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          dataMovie.releaseDate,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          size: 18,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          dataMovie.movieDuration,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          size: 18,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          dataMovie.ratingMovie.toStringAsFixed(1),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
