import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _StartPageState();
}

class _StartPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple.shade900, Colors.purple.shade500],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white24,
                contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                hintText: 'Your Name',
                hintStyle: const TextStyle(
                  color: Colors.white54,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Email Address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white24,
                contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                hintText: 'test@gmail.com',
                hintStyle: const TextStyle(
                  color: Colors.white54,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Password',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              autocorrect: false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white24,
                contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                hintText: 'Enter Password',
                hintStyle: const TextStyle(
                  color: Colors.white54,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(double.maxFinite, 45),
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                child: const Text('Create Account')),
          ],
        ),
      ),
    );
  }
}
