import 'package:flutter/material.dart';

class ValueInterests extends StatelessWidget {
  const ValueInterests({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listInterests = [
      {
        'imageUrl': 'assets/image/badminton.png',
        'nameInterest': 'Badminton',
      },
      {
        'imageUrl': 'assets/image/foodbar.png',
        'nameInterest': 'Makanan',
      },
      {
        'imageUrl': 'assets/image/gamer.png',
        'nameInterest': 'Game',
      },
      {
        'imageUrl': 'assets/image/coding.png',
        'nameInterest': 'Coding',
      },
      {
        'imageUrl': 'assets/image/book_reader.png',
        'nameInterest': 'Manga',
      },
      {
        'imageUrl': 'assets/image/movie.png',
        'nameInterest': 'Movie',
      },
    ];

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: listInterests.map((data) {
        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(75)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  data['imageUrl'],
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 5),
                Text(data['nameInterest']),
              ],
            ));
      }).toList(),
    );
  }
}
