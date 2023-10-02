// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie_app/screens/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _phoneNumberController = TextEditingController();
  String _verificationId = "";

  Future<void> _verifyPhoneNumber(String phoneNumber) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);

          print('success');

          // Authentication was successful, navigate to the next screen.
          // For example, you can push a new screen or set a logged-in state.
        },
        verificationFailed: (FirebaseAuthException e) {
          print('Verification failed: ${e.code}');
          // Handle verification failure (e.g., invalid phone number).
          // You can show an error message to the user.
        },
        codeSent: (String verificationId, int? resendToken) {
          // Store the verification ID for later use.
          setState(() {
            _verificationId = verificationId;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Called when the auto-retrieval timer has expired.
        },
      );
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image that fills the width of the screen
          Positioned(
            top: 0, // Place it at the top of the screen
            child: Image.asset(
              'assets/images/Vector 54.png',
              fit: BoxFit.fill, // Fill the width of the screen
            ),
          ),
          // Centered column for two images on top of the background image
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Positioned(
                    top: 30.0, // Place the Logo at the top
                    child: Image.asset(
                      'assets/images/Logo.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Positioned(
                    // Adjust the top position as needed
                    child: Image.asset(
                      'assets/images/CraftMyPlate.png',
                      // Set width and height as needed
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login or SignUp',
                      style: TextStyle(
                        color: Color(0xff787878),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  // Phone number input
                  TextField(
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ), // Border radius
                      hintText: '+91 Enter Phone Number',
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(
                    width: 500.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        String phoneNumber = _phoneNumberController.text;
                        _verifyPhoneNumber(phoneNumber);
                        // Navigator.of(context).pushReplacement(
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //         OTPscreen(), // Replace with your OTP screen widget
                        //   ),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff6318AF),
                        foregroundColor: Colors.white,
                        elevation: 5, // Elevation (shadow)

                        padding: EdgeInsets.all(16), // Button padding
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Button border radius
                        ),
                      ),
                      child: Text('Continue'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
