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
    return Container(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, DetailMoviePage.routeName,
              arguments: dataMovie.id);
        },
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
                    style: const TextStyle(fontWeight: FontWeight.bold),
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
                        dataMovie.ratingMovie.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 18,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '1h 50m',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) {
                        return Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              'MYSTERY',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
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
