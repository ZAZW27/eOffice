import 'dart:ui';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eoffice/pages/dashboard.dart';
import 'package:eoffice/splash.dart';
// import 'package:eoffice/pages/data_surat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const SplashScreen(),
      // home: AnimatedSplashScreen(
      //   backgroundColor: Colors.blue.shade50,
      //   duration: 700,
      //   splash:
      //   'images/splash.png',
      //   nextScreen: const Dashboard(),
      //   splashTransition: SplashTransition.slideTransition,

      // )
    );
  }
}
