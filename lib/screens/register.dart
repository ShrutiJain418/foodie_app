// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodie_app/screens/otp_screen.dart';
import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 40.0,
          bottom: 0.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => OTPscreen(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Just a step away !',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Image.asset('assets/images/register.png'),
            SizedBox(
              height: 480.0,
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Image.asset('assets/images/Button4.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
