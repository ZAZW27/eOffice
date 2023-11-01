import 'dart:ui';

import 'package:eoffice/pages/jabatan.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = false; // Initialize to false

  @override
  void initState() {
    super.initState();
    _initializeAppData();
  }

  _initializeAppData() async {
    // Simulate data initialization with a delay
    await Future.delayed(const Duration(milliseconds: 300)); // Adjust the duration as needed
    // Data initialization is complete
    setState(() {
      _isLoading = true; // Set to true when dashboard data is ready
    });

    // Wait for 1 second after dashboard data is ready and then navigate
    if (_isLoading) {
      Future.delayed(const Duration(milliseconds: 1500), () {
        _navToMain();
      });
    }
  }

  _navToMain() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const Jabatan(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        decoration: const BoxDecoration(
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
              opacity: _isLoading ? 1.0 : 0.0, // Show when data is loaded
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60, // Radius of the white circle
                    backgroundColor: Colors.white,
                    // backgroundImage: AssetImage('images/splash.png'),
                    child: Image.asset('images/splash.png'),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "E-Office",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.4), // Shadow color
                          offset: const Offset(1, 2), // Shadow offset
                          blurRadius: 4, // Shadow blur radius
                        ),
                      ],
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
