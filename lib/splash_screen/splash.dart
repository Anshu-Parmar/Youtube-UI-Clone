import 'dart:async';

import 'package:flutter/material.dart';
import 'package:youtube_clone/bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onStart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset("assets/youtube-logo.png",
            height: 120,
            width: 140,
            color: const Color.fromRGBO(255, 255, 255, 0.5),
            colorBlendMode: BlendMode.modulate,
          ),
        ),
      ),
    );
  }

  Future onStart() async{
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BottomNavigator(),));
    });
  }
}


