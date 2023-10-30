// ignore_for_file: unused_import, use_build_context_synchronously

import 'dart:ffi';
import 'dart:ui';

import 'package:eoffice/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initializeAppData();
  }

  _initializeAppData() async {
    // Simulate data initialization with a delay
    await Future.delayed(const Duration(milliseconds: 300)); // Adjust the duration as needed
    // Data initialization is complete, navigate to the dashboard
    setState(() {
      _isLoading = false;
    });

    // Delayed navigation to give time for the logo and text to show
    Future.delayed(const Duration(milliseconds: 2000), () {
      _navToDashboard();
    });
  }

  _navToDashboard() {
    if (!_isLoading) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const Dashboard(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeOutSine;
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 54, 244, 244), Colors.blue],
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Center(
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _isLoading ? 0.0 : 1.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/splash.png'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "E-Office",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}