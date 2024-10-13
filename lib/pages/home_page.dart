import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding:
              const EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 10),
          children: [
            const ListTile(
              leading: CircleAvatar(),
              title: Text('Welcome'),
              subtitle: Text('account name'),
            ),
            ListTile(
              title: const Text(
                'Now Showing',
                style: TextStyle(fontSize: 24),
              ),
              trailing: OutlinedButton(
                  onPressed: () {}, child: const Text('see more')),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    width: 150,
                    margin: const EdgeInsets.only(left: 20),
                    color: Colors.grey[300],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/image/bg_start_page.jpg'),
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                        const Flexible(
                          child: Column(
                            children: [
                              Text(
                                'Judul Film',
                                style: TextStyle(fontSize: 30),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                leading: Icon(Icons.star),
                                title: Text('9/10'),
                              ),
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Popular',
                style: TextStyle(fontSize: 24),
              ),
              trailing: OutlinedButton(
                  onPressed: () {}, child: const Text('see more')),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 15),
                    color: Colors.grey,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/image/bg_start_page.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Judul film'),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '9/10',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      size: 18,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '1h 50m',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: List.generate(
                                    3,
                                    (index) {
                                      return Container(
                                        width: 70,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'MYSTERY',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined), label: 'Wishlist'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
