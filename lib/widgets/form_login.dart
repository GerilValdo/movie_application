import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({
    super.key,
  });

  @override
  State<FormLogin> createState() => _FormLoginState();
}

bool isNotVisible = true;

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
