import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/movie.dart';
import '../pages/detail_movie_page.dart';

class PopularSeeMore extends StatelessWidget {
  const PopularSeeMore({
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
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
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
                    maxLines: 1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        overflow: TextOverflow.ellipsis),
                  )),
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
                      dataMovie.ratingMovie.toStringAsFixed(1),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
