import 'package:flutter/material.dart';

import '../models/movie.dart';

class MoviesNewReleases with ChangeNotifier {
  List<Movie> _allMovie = [];

  List<Movie> get allMovie => [..._allMovie];

  MoviesNewReleases() {
    _allMovie = dataMovieNewReleases
        .map(
          (movieData) => Movie.fromJson(movieData),
        )
        .toList();
  }

  Movie? findById(movieId) {
    return _allMovie.where((movId) => movId.id == movieId).firstOrNull;
  }

  List<Movie> get wishlistMovies =>
      _allMovie.where((movie) => movie.isWishlist).toList();

  void removeFromWishlist(Movie movie) {
    movie.isWishlist = false;
    notifyListeners();
  }

  List<Map<String, dynamic>> dataMovieNewReleases = [
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/9SSEUrSqhljBMzRe4aBTh17rUaC.jpg",
      "genre_ids": [878, 27],
      "id": 945961,
      "original_title": "Alien: Romulus",
      "overview":
          "While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/b33nnKl1GSFbao4l3fZDDqsMx0F.jpg",
      "release_date": "2024-08-13",
      "title": "Alien: Romulus",
      "vote_average": 7.3,
      "movie_duration": "1h 59m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/7h6TqPB3ESmjuVbxCxAeB1c9OB1.jpg",
      "genre_ids": [27, 18, 878],
      "id": 933260,
      "original_title": "The Substance",
      "overview":
          "A fading celebrity decides to usea black market drug, a cell-replicating substance that temporarily creates a younger, better version of herself.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/lqoMzCcZYEFK729d6qzt349fB4o.jpg",
      "release_date": "2024-09-07",
      "title": "The Substance",
      "vote_average": 7.303,
      "movie_duration": "2h 20m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/yDHYTfA3R0jFYba16jBB1ef8oIt.jpg",
      "genre_ids": [28, 35, 878],
      "id": 533535,
      "original_title": "Deadpool & Wolverine",
      "overview":
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg",
      "release_date": "2024-07-24",
      "title": "Deadpool & Wolverine",
      "vote_average": 7.7,
      "movie_duration": "2h 8m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/p5ozvmdgsmbWe0H8Xk7Rc8SCwAB.jpg",
      "genre_ids": [16, 10751, 12, 35, 18],
      "id": 1022789,
      "original_title": "Inside Out 2",
      "overview":
          "Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg",
      "release_date": "2024-06-11",
      "title": "Inside Out 2",
      "vote_average": 7.615,
      "movie_duration": "1h 36m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/eQEgKIRF7KeVGBQ8IYcklpU8RPf.jpg",
      "genre_ids": [27, 53],
      "id": 1034541,
      "original_title": "Terrifier 3",
      "overview":
          "Five years after surviving Art the Clown's Halloween massacre, Sienna and Jonathan are still struggling to rebuild their shattered lives. As the holiday season approaches, they try to embrace the Christmas spirit and leave the horrors of the past behind. But just when they think they're safe, Art returns, determined to turn their holiday cheer into a new nightmare. The festive season quickly unravels as Art unleashes his twisted brand of terror, proving that no holiday is safe.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/63xYQj1BwRFielxsBDXvHIJyXVm.jpg",
      "release_date": "2024-10-09",
      "title": "Terrifier 3",
      "vote_average": 6.933,
      "movie_duration": "2h 5m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/3sh2UA2Q2l7fihgoj1LhFFPTlIM.jpg",
      "genre_ids": [28, 878, 12],
      "id": 912649,
      "original_title": "Venom: The Last Dance",
      "overview":
          "Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie's last dance.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/k42Owka8v91trK1qMYwCQCNwJKr.jpg",
      "release_date": "2024-10-22",
      "title": "Venom: The Last Dance",
      "vote_average": 7.3,
      "movie_duration": "1h 49m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/4KHEK6AQFHhv4TDtL3KLReePB05.jpg",
      "genre_ids": [28, 27, 53],
      "id": 1029235,
      "original_title": "Azrael",
      "overview":
          "In a world where no one speaks, a devout female hunts down a young woman who has escaped her imprisonment. Recaptured by its ruthless leaders, Azrael is due to be sacrificed to pacify an ancient evil deep within the surrounding wilderness.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/qpdFKDvJS7oLKTcBLXOaMwUESbs.jpg",
      "release_date": "2024-09-27",
      "title": "Azrael",
      "vote_average": 6.0,
      "movie_duration": "1h 25m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/xi1VSt3DtkevUmzCx2mNlCoDe74.jpg",
      "genre_ids": [35, 14, 27],
      "id": 917496,
      "original_title": "Beetlejuice Beetlejuice",
      "overview":
          "After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Betelgeuse, Lydia's life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/kKgQzkUCnQmeTPkyIwHly2t6ZFI.jpg",
      "release_date": "2024-09-04",
      "title": "Beetlejuice Beetlejuice",
      "vote_average": 7.211,
      "movie_duration": "1h 44m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/g1z1ZvYKcmk9EnVOTYXR6vkNjkZ.jpg",
      "genre_ids": [14, 27, 28],
      "id": 1087822,
      "original_title": "Hellboy: The Crooked Man",
      "overview":
          "Hellboy and a rookie BPRD agent get stranded in 1950s rural Appalachia. There, they discover a small community haunted by witches, led by a local devil with a troubling connection to Hellboy's past: the Crooked Man.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/iz2GabtToVB05gLTVSH7ZvFtsMM.jpg",
      "release_date": "2024-08-29",
      "title": "Hellboy: The Crooked Man",
      "vote_average": 4.983,
      "movie_duration": "1h 40m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/p4INKu77iuTG1o1a5N3Y9vqeEGq.jpg",
      "genre_ids": [27, 53],
      "id": 1079485,
      "original_title": "Winnie-the-Pooh: Blood and Honey 2",
      "overview":
          "Five months following the murders, Christopher Robin struggles to maintain a regular life while dealing with PTSD. However, deep within the 100-Acre-Wood, a destructive rage grows as Pooh, Piglet, Owl, and Tigger find their home and their lives endangered after their existence is revealed.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/2sADrLwMQof6yYmrJRSa04tFZuS.jpg",
      "release_date": "2024-03-26",
      "title": "Winnie-the-Pooh: Blood and Honey 2",
      "vote_average": 6.2,
      "movie_duration": "1h 40m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/lgkPzcOSnTvjeMnuFzozRO5HHw1.jpg",
      "genre_ids": [16, 10751, 35, 28],
      "id": 519182,
      "original_title": "Despicable Me 4",
      "overview":
          "Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/3w84hCFJATpiCO5g8hpdWVPBbmq.jpg",
      "release_date": "2024-06-20",
      "title": "Despicable Me 4",
      "vote_average": 7.1,
      "movie_duration": "1h 34m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/3m0j3hCS8kMAaP9El6Vy5Lqnyft.jpg",
      "genre_ids": [878, 53, 27, 18],
      "id": 1125510,
      "original_title": "El hoyo 2",
      "overview":
          "After a mysterious leader imposes his law in a brutal system of vertical cells, a new arrival battles against a dubious food distribution method.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/izuzUb0sDokqp9o8utVfsrSJuy5.jpg",
      "release_date": "2024-09-27",
      "title": "The Platform 2",
      "vote_average": 5.694,
      "movie_duration": "1h 41m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/bkENfmxUY3UYsRLizJAhF5IQPvS.jpg",
      "genre_ids": [28, 80, 53],
      "id": 1025596,
      "original_title": "Blood for Dust",
      "overview":
          "Reckless Ricky makes serious money dealing illegal weapons throughout the tri-state area and loves to flaunt it. Traveling salesman Cliff, covers the same territory Ricky runs guns through. Desperate to find some financial relief for his struggling family, Cliff agrees to partner with Ricky, to commit cross-state drug and gun deliveries for a mid-level American cartel boss John. When a simple exchange turns into a bloodbath after Ricky kills everyone in a territory grab, the pair find themselves in a pressure cooker situation where unlikely drug dealer Cliff must fight as hard as he can to stay alive.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/nvaCnkl8RilLhVAQXPFei0tqkqW.jpg",
      "release_date": "2024-04-19",
      "title": "Blood for Dust",
      "vote_average": 5.6,
      "movie_duration": "1h 44m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/64tinBsds1nVp4wOCgYhMbSgsRW.jpg",
      "genre_ids": [28, 18, 36],
      "id": 1075676,
      "original_title": "전,란",
      "overview":
          "In the Joseon Dynasty, two friends who grew up together — one the master and one the servant — reunite post-war as enemies on opposing sides.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/hg9OeaCRSpazrfqYyEFr6BDaZW8.jpg",
      "release_date": "2024-10-02",
      "title": "Uprising",
      "vote_average": 7.3,
      "movie_duration": "2h 6m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/of1tQasFGCeHgWPmSgdA1WS6hNW.jpg",
      "genre_ids": [80, 53, 28],
      "id": 1047373,
      "original_title": "The Silent Hour",
      "overview":
          "While working a case as an interpreter, a hearing-impaired police detective must confront a group of criminals trying to eliminate a deaf murder witness in her apartment building.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/j736cRzBtEPCm0nHnpRN1prqiqj.jpg",
      "release_date": "2024-10-03",
      "title": "The Silent Hour",
      "vote_average": 6.583,
      "movie_duration": "1h 40m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/zAqBIeO71BFL7bAtP5TFzVjVamy.jpg",
      "genre_ids": [10749, 18],
      "id": 1079091,
      "original_title": "It Ends with Us",
      "overview":
          "When a woman's first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/AjV6jFJ2YFIluYo4GQf13AA1tqu.jpg",
      "release_date": "2024-08-07",
      "title": "It Ends with Us",
      "vote_average": 7.174,
      "movie_duration": "2h 10m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/cVg97LOJgrDZJ7bVmjU2KsGRYnU.jpg",
      "genre_ids": [27, 9648],
      "id": 1100782,
      "original_title": "Smile 2",
      "overview":
          "About to embark on a new world tour, global pop sensation Skye Riley begins experiencing increasingly terrifying and inexplicable events. Overwhelmed by the escalating horrors and the pressures of fame, Skye is forced to face her dark past to regain control of her life before it spirals out of control.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/aE85MnPIsSoSs3978Noo16BRsKN.jpg",
      "release_date": "2024-10-16",
      "title": "Smile 2",
      "vote_average": 6.985,
      "movie_duration": "2h 7m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/reNf6GBzOe48l9WEnFOxXgW56Vg.jpg",
      "genre_ids": [18, 80, 53],
      "id": 889737,
      "original_title": "Joker: Folie à Deux",
      "overview":
          "While struggling with his dual identity, Arthur Fleck not only stumbles upon true love, but also finds the music that's always been inside him.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/aciP8Km0waTLXEYf5ybFK5CSUxl.jpg",
      "release_date": "2024-10-01",
      "title": "Joker: Folie à Deux",
      "vote_average": 5.8,
      "movie_duration": "2h 18m",
    },
  ];
}
