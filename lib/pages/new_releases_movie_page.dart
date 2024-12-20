import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/movies_new_releases.dart';
import '../widgets/new_releases_see_more.dart';

class NewReleasesMoviePage extends StatelessWidget {
  const NewReleasesMoviePage({super.key});
  static String routeName = '/new-releases-movie-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.purple.shade900,
        title: Text(
          'New Releases',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 610) {
            return const NewReleasesSeeMorePage(gridCount: 2);
          }
          if (constraints.maxWidth <= 840) {
            return const NewReleasesSeeMorePage(gridCount: 3);
          }
          if (constraints.maxWidth <= 1100) {
            return const NewReleasesSeeMorePage(gridCount: 4);
          } else {
            return const NewReleasesSeeMorePage(gridCount: 5);
          }
        },
      ),
    );
  }
}

class NewReleasesSeeMorePage extends StatelessWidget {
  const NewReleasesSeeMorePage({super.key, required this.gridCount});
  final int gridCount;

  @override
  Widget build(BuildContext context) {
    final dataMovieNewReleases =
        Provider.of<MoviesNewReleases>(context).allMovie;
    return Container(
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
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.5,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 20,
                    crossAxisCount: gridCount),
                itemBuilder: (context, index) {
                  return ChangeNotifierProvider.value(
                    value: dataMovieNewReleases[index],
                    child: const NewReleasesSeeMore(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
