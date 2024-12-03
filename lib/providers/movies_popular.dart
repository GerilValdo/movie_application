import 'package:flutter/material.dart';

import '../models/movie.dart';

class MoviesPopular with ChangeNotifier {
  List<Movie> _allMovie = [];

  List<Movie> get allMovie => [..._allMovie];

  MoviesPopular() {
    _allMovie = dataMoviePopular
        .map(
          (movieData) => Movie.fromJson(movieData),
        )
        .toList();
  }

  Movie findById(movieId) {
    return _allMovie.firstWhere((movId) => movId.id == movieId);
  }

  List<Map<String, dynamic>> dataMoviePopular = [
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/v9acaWVVFdZT5yAU7J2QjwfhXyD.jpg",
      "genre_ids": [16, 878, 10751],
      "id": 1184918,
      "original_title": "The Wild Robot",
      "overview":
          "After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island's animals and cares for an orphaned baby goose.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/wTnV3PCVW5O92JMrFvvrRcV39RU.jpg",
      "release_date": "2024-09-12",
      "title": "The Wild Robot",
      "vote_average": 8.586,
      "movie_duration": "1h 42m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg",
      "genre_ids": [878, 28, 12],
      "id": 912649,
      "original_title": "Venom: The Last Dance",
      "overview":
          "Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie's last dance.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/k42Owka8v91trK1qMYwCQCNwJKr.jpg",
      "release_date": "2024-10-22",
      "title": "Venom: The Last Dance",
      "vote_average": 6.549,
      "movie_duration": "1h 49m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/xlkclSE4aq7r3JsFIJRgs21zUew.jpg",
      "genre_ids": [27, 53],
      "id": 1034541,
      "original_title": "Terrifier 3",
      "overview":
          "Five years after surviving Art the Clown's Halloween massacre, Sienna and Jonathan are still struggling to rebuild their shattered lives. As the holiday season approaches, they try to embrace the Christmas spirit and leave the horrors of the past behind. But just when they think they're safe, Art returns, determined to turn their holiday cheer into a new nightmare. The festive season quickly unravels as Art unleashes his twisted brand of terror, proving that no holiday is safe.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/63xYQj1BwRFielxsBDXvHIJyXVm.jpg",
      "release_date": "2024-10-09",
      "title": "Terrifier 3",
      "vote_average": 7.3,
      "movie_duration": "2h 17m",
    },
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
      "vote_average": 7.276,
      "movie_duration": "1h 59m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/oPUOpnl3pqD8wuidjfUn17mO1yA.jpg",
      "genre_ids": [16, 878, 12, 10751, 28],
      "id": 698687,
      "original_title": "Transformers One",
      "overview":
          "The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/iRCgqpdVE4wyLQvGYU3ZP7pAtUc.jpg",
      "release_date": "2024-09-11",
      "title": "Transformers One",
      "vote_average": 8.116,
      "movie_duration": "1h 44m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/9oYdz5gDoIl8h67e3ccv3OHtmm2.jpg",
      "genre_ids": [27, 878, 53],
      "id": 933260,
      "original_title": "The Substance",
      "overview":
          "A fading celebrity decides to use a black market drug, a cell-replicating substance that temporarily creates a younger, better version of herself.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/lqoMzCcZYEFK729d6qzt349fB4o.jpg",
      "release_date": "2024-09-07",
      "title": "The Substance",
      "vote_average": 7.3,
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
      "vote_average": 7.71,
      "movie_duration": "2h 8m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/VuukZLgaCrho2Ar8Scl9HtV3yD.jpg",
      "genre_ids": [878, 28],
      "id": 335983,
      "original_title": "Venom",
      "overview":
          "Investigative journalist Eddie Brock attempts a comeback following a scandal, but accidentally becomes the host of Venom, a violent, super powerful alien symbiote. Soon, he must rely on his newfound powers to protect the world from a shadowy organization looking for a symbiote of their own.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
      "release_date": "2018-09-28",
      "title": "Venom",
      "vote_average": 6.831,
      "movie_duration": "1h 52m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/vIgyYkXkg6NC2whRbYjBD7eb3Er.jpg",
      "genre_ids": [878, 28, 12],
      "id": 580489,
      "original_title": "Venom: Let There Be Carnage",
      "overview":
          "After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/1MJNcPZy46hIy2CmSqOeru0yr5C.jpg",
      "release_date": "2021-09-30",
      "title": "Venom: Let There Be Carnage",
      "vote_average": 6.798,
      "movie_duration": "1h 37m",
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
      "vote_average": 7.614,
      "movie_duration": "1h 36m",
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
      "vote_average": 7.2,
      "movie_duration": "1h 44m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/uLqNGzJwnj8JKkKuRM2dHWJKCtc.jpg",
      "genre_ids": [28, 27, 53],
      "id": 1029235,
      "original_title": "Azrael",
      "overview":
          "In a world where no one speaks, a devout female hunts down a young woman who has escaped her imprisonment. Recaptured by its ruthless leaders, Azrael is due to be sacrificed to pacify an ancient evil deep within the surrounding wilderness.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/qpdFKDvJS7oLKTcBLXOaMwUESbs.jpg",
      "release_date": "2024-09-27",
      "title": "Azrael",
      "vote_average": 6.1,
      "movie_duration": "1h 25m",
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
          "https://image.tmdb.org/t/p/w500/wWba3TaojhK7NdycRhoQpsG0FaH.jpg",
      "release_date": "2024-06-20",
      "title": "Despicable Me 4",
      "vote_average": 7.113,
      "movie_duration": "1h 34m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/9msuazXGWAyl7vhxVFU7e7Bb5Ik.jpg",
      "genre_ids": [18, 10749],
      "id": 179387,
      "original_title": "Heavenly Touch",
      "overview":
          "Jonard is having trouble making ends meet. His mother is suffering from depression, and he and his sister are forced to quit school in order to take care of her. One day, Jonard meets up his friend Rodel, and Rodel introduces him to the world of massage parlors. Rodel teaches him massage, and brings him to Heavenly Touch, a syndicate-run massage parlor that mostly caters to homosexuals.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/ory8WuAqznTE7lfopTSymHpop2t.jpg",
      "release_date": "2009-05-12",
      "title": "Heavenly Touch",
      "vote_average": 6.0,
      "movie_duration": "1h 37m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/plH6vmlExhkNsxO56DKIzO3oC2O.jpg",
      "genre_ids": [53, 12, 28, 878],
      "id": 1196470,
      "original_title": "Survivre",
      "overview":
          "A couple celebrates their son’s birthday in the middle of the ocean on their boat. A violent storm hits and it brings up hungry creatures from the depths and they fight for their survival.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/7fR3KxswtY8OHHZuOUB9td58CRX.jpg",
      "release_date": "2024-06-19",
      "title": "Survive",
      "vote_average": 4.5,
      "movie_duration": "1h 30m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/3m0j3hCS8kMAaP9El6Vy5Lqnyft.jpg",
      "genre_ids": [878, 27],
      "id": 1125510,
      "original_title": "El hoyo 2",
      "overview":
          "After a mysterious leader imposes his law in a brutal system of vertical cells, a new arrival battles against a dubious food distribution method.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/z2m3g8QOEMNyslgBU5vsyzRwgSz.jpg",
      "release_date": "2024-09-27",
      "title": "The Platform 2",
      "vote_average": 5.7,
      "movie_duration": "1h 41m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/hd1TvTUGjkoYoqvXYfSBpI5Ri9B.jpg",
      "genre_ids": [16, 28, 12, 878],
      "id": 1159311,
      "original_title": "僕のヒーローアカデミア THE MOVIE ユアネクスト",
      "overview":
          "In a society devastated by the effects of an all-out war between heroes and villains, a mysterious giant fortress suddenly appears, engulfing towns and people one after another. Then, a man reminiscent of All Might, the 'symbol of peace', stands in front of Izuku and his friends...",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/8rdB1wkheEMMqcY8qLAKjCMPcnZ.jpg",
      "release_date": "2024-08-02",
      "title": "My Hero Academia: You're Next",
      "vote_average": 6.85,
      "movie_duration": "1h 50m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/bAO9hLGRWOJMUFXmKwa4kST6I5N.jpg",
      "genre_ids": [28, 35, 80],
      "id": 616446,
      "original_title": "Brothers",
      "overview":
          "A reformed criminal's attempt at going straight is derailed when he reunites with his sanity-testing twin brother on a road trip for the score of a lifetime. Dodging bullets, the law, and an overbearing mother along the way, they must heal their severed family bond before they end up killing each other.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/Akweo95FGyDpucYVT81h0SbX8Ky.jpg",
      "release_date": "2024-10-10",
      "title": "Brothers",
      "vote_average": 6.414,
      "movie_duration": "1h 45m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/v23fWgJUEt8EMmvn19btIacxP8E.jpg",
      "genre_ids": [10749, 14, 16],
      "id": 3933,
      "original_title": "Corpse Bride",
      "overview":
          "Set in a 19th-century European village, this stop-motion animation feature follows the story of Victor, a young man whisked away to the underworld and wed to a mysterious corpse bride, while his real bride Victoria waits bereft in the land of the living.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/isb2Qow76GpqYmsSyfdMfsYAjts.jpg",
      "release_date": "2005-09-12",
      "title": "Corpse Bride",
      "vote_average": 7.576,
      "movie_duration": "1h 17m",
    },
    {
      "backdrop_path":
          "https://image.tmdb.org/t/p/w500/pvE13VXj7WvTDYkng3tTWOTO6Nq.jpg",
      "genre_ids": [28, 80, 53],
      "id": 1151949,
      "original_title": "Jejak Bayangan",
      "overview":
          "Skilled in the art of killing, a young assassin defies her mentor to save a boy from a ruthless crime syndicate — and she'll destroy anyone in her path.",
      "poster_path":
          "https://image.tmdb.org/t/p/w500/cfkcrKySRyJiIdLo6c6kNSyLFh7.jpg",
      "release_date": "2024-09-10",
      "title": "The Shadow Strays",
      "vote_average": 7.432,
      "movie_duration": "2h 24m",
    }
  ];
}
