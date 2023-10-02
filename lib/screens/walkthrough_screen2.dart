// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodie_app/reusable_skipbutton.dart';
import 'package:foodie_app/screens/walkthrough_screen3.dart';
import 'buttonImage.dart';

class WalkThroughScreen2 extends StatefulWidget {
  const WalkThroughScreen2({super.key});

  @override
  State<WalkThroughScreen2> createState() => _WalkThroughScreen2State();
}

class _WalkThroughScreen2State extends State<WalkThroughScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 20.0,
            right: 10.0,
            child: ReusableSkipButton(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Illustration3.png'),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Exquisite Catering',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Experience culinary artistry like never\n'
                  ' before with our innovative and exquisite\n'
                  ' cuisine creations',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff7B7B7B),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ButtonImage(
                  imagePath: 'assets/images/Button2.png',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WalkThroughScreen3(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
