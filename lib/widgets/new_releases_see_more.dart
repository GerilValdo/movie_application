import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/movie.dart';
import '../pages/detail_movie_page.dart';

class NewReleasesSeeMore extends StatelessWidget {
  const NewReleasesSeeMore({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 11,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(dataMovie.imagePosterMovieUrl)),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              dataMovie.titleMovie,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: Colors.yellow,
                ),
                const SizedBox(width: 5),
                Text(
                  dataMovie.ratingMovie.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
