import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../pages/main_screen.dart';
import '../widgets/value_interests.dart';
import './wishlist_movie_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static String routeName = '/profile-page';

  @override
  Widget build(BuildContext context) {
    const String instagramUrl = 'https://www.instagram.com/gerilmanday/';
    const String githubUrl = 'https://github.com/GerilValdo';
    const String linkedinUrl =
        'https://www.linkedin.com/in/geril-jatsiah-manday/';

    Future<void> launchInstagram() async {
      final Uri url = Uri.parse(instagramUrl);
      try {
        launchUrl(url, mode: LaunchMode.externalApplication);
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }

    Future<void> launchGithub() async {
      final Uri url = Uri.parse(githubUrl);
      try {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }

    Future<void> launchLinkedin() async {
      final Uri url = Uri.parse(linkedinUrl);
      try {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 160,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/bg_start_page.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.black,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/image/photo_profile.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Geril Valdo Jatsiah Manday',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Flutter Developer',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text('Kab. Bogor'),
                        SizedBox(width: 15),
                        Icon(Icons.record_voice_over_outlined,
                            color: Colors.white),
                        SizedBox(width: 5),
                        Text('Indonesia'),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              shape: const CircleBorder(),
                              fixedSize: const Size.fromRadius(30),
                              padding: EdgeInsets.zero),
                          onPressed: () {
                            launchInstagram();
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              shape: const CircleBorder(),
                              fixedSize: const Size.fromRadius(30),
                              padding: EdgeInsets.zero),
                          onPressed: () {
                            launchGithub();
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              shape: const CircleBorder(),
                              fixedSize: const Size.fromRadius(30),
                              padding: EdgeInsets.zero),
                          onPressed: () {
                            launchLinkedin();
                          },
                          child: const FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Container(
                      width: double.infinity,
                      height: 200,
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.1),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('INTERESTS'),
                          SizedBox(height: 10),
                          ValueInterests(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, MainScreenPage.routeName);
          } else if (index == 1) {
            Navigator.pushReplacementNamed(
                context, WishlistMoviePage.routeName);
          }
        },
      ),
    );
  }
}
