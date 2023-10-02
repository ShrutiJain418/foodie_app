// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodie_app/screens/login_screen.dart';
import 'package:foodie_app/screens/register.dart';

class OTPscreen extends StatefulWidget {
  const OTPscreen({super.key});

  @override
  State<OTPscreen> createState() => _OTPscreenState();
}

class _OTPscreenState extends State<OTPscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  Positioned(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Positioned(
                    child: Text(
                      'OTP Verification',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
                child: Positioned(
                  child: Image.asset('assets/images/OTP.png'),
                ),
              ),
              SizedBox(
                height: 115.0,
              ),
              Positioned(
                bottom: 10.0,
                child: Image.asset('assets/images/keyboard.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
