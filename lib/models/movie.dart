import 'package:flutter/material.dart';

class Movie with ChangeNotifier {
  String titleMovie,
      description,
      imageDetailMovieUrl,
      imagePosterMovieUrl,
      movieDuration;
  int id;
  double ratingMovie;

  // genreMovie,
  // actorName,
  // imageActorUrl;
  bool isWishlist;

  Movie({
    required this.id,
    required this.titleMovie,
    required this.description,
    required this.imageDetailMovieUrl,
    required this.imagePosterMovieUrl,
    required this.ratingMovie,
    required this.movieDuration,
    // required this.genreMovie,
    // required this.actorName,
    // required this.imageActorUrl,
    this.isWishlist = false,
  });

  void statusWishlist() {
    isWishlist = !isWishlist;
    notifyListeners();
  }

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      titleMovie: json['title'],
      description: json['overview'],
      imageDetailMovieUrl: json['backdrop_path'],
      imagePosterMovieUrl: json['poster_path'],
      movieDuration: json['movie_duration'],
      ratingMovie: (json['vote_average'] as num).toDouble(),
    );
  }
}
