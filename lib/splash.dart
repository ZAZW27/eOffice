// ignore_for_file: unused_import, use_build_context_synchronously

import 'dart:ffi';
import 'dart:ui';

import 'package:eoffice/pages/dashboard.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    _navToDashboard();
  }

  _navToDashboard()async{
    await Future.delayed(const Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 54, 244, 244), Colors.blue],
          ),
          
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                ), 
                SizedBox(height: 15,),
                Text(
                  "E-Office", 
                  style: TextStyle(
                    fontSize: 30, 
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}