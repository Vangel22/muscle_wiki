import 'package:flutter/material.dart';
import 'package:globo_fitness/screens/login_screen.dart';
import '../screens/bmi_screen.dart';
import '../screens/intro_screen.dart';
import 'brandColor.dart';
//import 'package:firebase_auth/firebase_auth.dart';


void main() {
  runApp(MuscleWiki());
}

class MuscleWiki extends StatelessWidget {
  const MuscleWiki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: BrandColor.kToDark,
      ),
      routes: {
        '/': (context) => IntroScreen(),
        '/login': (context) => LoginScreen(),
        '/bmi': (context) => BmiScreen(),
      },
      initialRoute: '/login',
    );
  }
}
