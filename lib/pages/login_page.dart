import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple.shade900, Colors.purple.shade500],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                SizedBox(height: 80),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                Text('Name'),
                TextFormField(
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    hintText: 'Your Name',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Text('Email Address'),
                TextFormField(
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    hintText: 'test@gmail.com',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Text('Password'),
                TextFormField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                      fixedSize: Size(double.maxFinite, 45),
                    ),
                    onPressed: () {},
                    child: Text('Create Account')),
                SizedBox(height: 15),
                Text('or Sign Up with'),
                SizedBox(height: 15),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
