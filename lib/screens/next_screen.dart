// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'walkthrough_screen1.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 4000), () {
      // Navigate to the OtherScreen after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => WalkthroughScreen1(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: Color(0xff6318AF),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Logo.png',
                  width: 124.62,
                  height: 141.55,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset('assets/images/TAGLINE.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
