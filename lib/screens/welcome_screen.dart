// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'next_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width * 1;
    final screenHeight = MediaQuery.of(context).size.height * 1;

    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => NextScreen(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Color(0xffFFFDD0),
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Image.asset(
              'assets/images/Vector 3.png',
              fit: BoxFit.fill,
            ),
            width: screenWidth,
            height: screenHeight,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Logo.png'),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset('assets/images/Welcome.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
