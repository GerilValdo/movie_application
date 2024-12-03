import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import './sign_up_page.dart';

import '../widgets/form_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String routeName = '/login-page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            FormLogin(),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                foregroundColor: Colors.white,
                fixedSize: const Size(double.maxFinite, 45),
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              child:
                  Text('Login', style: Theme.of(context).textTheme.titleMedium),
            ),
            SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Don\'t Have Account? ',
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: 'SignUp',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacementNamed(
                            context, SignUpPage.routeName);
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
