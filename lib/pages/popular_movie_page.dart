import 'package:flutter/material.dart';

import './detail_movie_page.dart';

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
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.purple.shade900,
        title: Text(
          'Popular',
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
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1.5,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, DetailMoviePage.routeName);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 11,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/image/bg_start_page.jpg'),
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            flex: 1,
                            child: Text(
                              'Judul Film',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
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
                                  '9/10',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
