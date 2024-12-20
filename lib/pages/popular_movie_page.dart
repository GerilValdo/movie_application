import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/movies_popular.dart';
import '../widgets/popular_see_more.dart';

class PopularMoviePage extends StatelessWidget {
  const PopularMoviePage({super.key});
  static String routeName = '/popular-movie-page';

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
          'Popular',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 610) {
            return const PopularSeeMorePage(gridCount: 2);
          }
          if (constraints.maxWidth <= 840) {
            return const PopularSeeMorePage(gridCount: 3);
          }
          if (constraints.maxWidth <= 1100) {
            return const PopularSeeMorePage(gridCount: 4);
          } else {
            return const PopularSeeMorePage(gridCount: 5);
          }
        },
      ),
    );
  }
}

class PopularSeeMorePage extends StatelessWidget {
  const PopularSeeMorePage({super.key, required this.gridCount});

  final int gridCount;

  @override
  Widget build(BuildContext context) {
    final dataMoviePopular = Provider.of<MoviesPopular>(context).allMovie;
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
                itemCount: dataMoviePopular.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.5,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 20,
                    crossAxisCount: gridCount),
                itemBuilder: (context, index) {
                  return ChangeNotifierProvider.value(
                    value: dataMoviePopular[index],
                    child: const PopularSeeMore(),
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
