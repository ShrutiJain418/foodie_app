//import 'package:firebase_core/firebase_core.dart';
// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:foodie_app/screens/next_screen.dart';
import 'package:foodie_app/screens/walkthrough_screen1.dart';
import 'package:foodie_app/screens/welcome_screen.dart';
import 'package:foodie_app/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodie_app/screens/main_screen.dart';
import 'firebase_options.dart';
import 'package:activout_firebase_options_selector/activout_firebase_options_selector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );

  runApp(FoodieApp());
}

class FoodieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      routes: {
        '/nextScreen': (context) => NextScreen(),
        '/otherScreen': (context) => WalkthroughScreen1(),
      },
    );
  }
}
