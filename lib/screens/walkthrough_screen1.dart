// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:foodie_app/reusable_skipbutton.dart';
import 'package:foodie_app/screens/walkthrough_screen2.dart';
import 'buttonImage.dart';

class WalkthroughScreen1 extends StatefulWidget {
  @override
  State<WalkthroughScreen1> createState() => _WalkthroughScreen1State();
}

class _WalkthroughScreen1State extends State<WalkthroughScreen1> {
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
                Image.asset('assets/images/Illustration 2.png'),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Create Your Own Plate',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Create unforgettable memories with our\n'
                  'unique feature to curate your favorite \n'
                  'cuisines and food, tailored to your special\n'
                  ' occasion.',
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
                  imagePath: 'assets/images/Button1.png',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WalkThroughScreen2(),
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
