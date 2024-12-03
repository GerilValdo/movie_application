import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import './login_page.dart';
import '../widgets/form_sign_up.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static String routeName = '/signup-page';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
        child: ListView(
          children: [
            const SizedBox(height: 80),
            const Text(
              'Sign Up',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            const FormSignUp(),
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
            SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Already Have Account? ',
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacementNamed(
                            context, LoginPage.routeName);
                      },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
