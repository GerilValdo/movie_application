import 'package:flutter/material.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({
    super.key,
  });

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

bool isNotVisible = true;

class _FormSignUpState extends State<FormSignUp> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            keyboardType: TextInputType.name,
            style: TextStyle(color: Colors.white, fontSize: 18),
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
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white, fontSize: 18),
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
            keyboardType: TextInputType.visiblePassword,
            obscureText: isNotVisible,
            style: TextStyle(color: Colors.white, fontSize: 18),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white24,
              contentPadding: const EdgeInsets.symmetric(horizontal: 25),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isNotVisible = !isNotVisible;
                    });
                  },
                  icon: const Icon(Icons.remove_red_eye)),
              hintText: 'Enter Password',
              hintStyle: const TextStyle(
                color: Colors.white54,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ],
      ),
    );
  }
}
