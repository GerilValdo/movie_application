import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/movie.dart';
import '../pages/detail_movie_page.dart';

class RowNewReleaseMovie extends StatelessWidget {
  const RowNewReleaseMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dataMovie = Provider.of<Movie>(context);
    return Container(
      height: 300,
      width: 150,
      margin: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, DetailMoviePage.routeName,
              arguments: dataMovie.id);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
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
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dataMovie.titleMovie,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    maxLines: 2,
                    softWrap: true,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 5),
                      Text(
                        dataMovie.ratingMovie.toString(),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
