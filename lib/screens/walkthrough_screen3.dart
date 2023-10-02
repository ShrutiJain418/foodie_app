// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodie_app/reusable_skipbutton.dart';
import 'buttonImage.dart';
import 'login_screen.dart';

class WalkThroughScreen3 extends StatefulWidget {
  const WalkThroughScreen3({super.key});

  @override
  State<WalkThroughScreen3> createState() => _WalkThroughScreen3State();
}

class _WalkThroughScreen3State extends State<WalkThroughScreen3> {
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
                Image.asset('assets/images/Illustration 4.png'),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Personal Order Executive',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Embark on a personalized culinary journey\n'
                  ' with our dedicated one-to-one customer\n'
                  ' support, ensuring a seamless and\n'
                  ' satisfying experience every step of the\n'
                  ' way.',
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
                  imagePath: 'assets/images/Button3.png',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
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
