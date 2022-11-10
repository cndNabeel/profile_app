import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/screens/screen_login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initsatate() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () =>
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => login()),
          ),
    );
  }
  Widget build(BuildContext context) {
    return  SplashScreenView(
      navigateRoute: login(),
      duration: 5000,
      imageSize: 100,
      imageSrc: 'accets/logo.png',
      text: 'ACCRUON',
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(fontSize: 40),
      backgroundColor: Colors.black12,
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
    );

  }
}