// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodie_app/screens/login_screen.dart';

class ReusableSkipButton extends StatelessWidget {
  const ReusableSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xffE8E0EA),
        ), // Set the background color here
      ),
      child: Text(
        'Skip',
        style: TextStyle(color: Color(0xff6318AF)),
      ),
    );
  }
}
