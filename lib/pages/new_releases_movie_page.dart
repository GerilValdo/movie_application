import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/movies_new_releases.dart';
import '../widgets/new_releases_see_more.dart';

class NewReleasesMoviePage extends StatelessWidget {
  const NewReleasesMoviePage({super.key});
  static String routeName = '/new-releases-movie-page';

  @override
  Widget build(BuildContext context) {
    final dataMovieNewReleases =
        Provider.of<MoviesNewReleases>(context).allMovie;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.purple.shade900,
        title: Text(
          'New Releases',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple.shade900, Colors.purple.shade500],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: dataMovieNewReleases.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1.5,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return ChangeNotifierProvider.value(
                      value: dataMovieNewReleases[index],
                      child: NewReleasesSeeMore(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
